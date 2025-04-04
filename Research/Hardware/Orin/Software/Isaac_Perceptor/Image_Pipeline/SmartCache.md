# Smart Cache

Training DL models requires efficient use of computing resources to ensure speed and accuracy. The major resources used are IO (Data loading), CPU (pre-processing), and GPU (data processing). IO is the slowest and GPU is the fastest.

During model training, the same dataset is used repeatedly. In each step of the training, a set of training images must be loaded from files and then processed through a chain of transformations before being fed to the training graph for GPU accelerated computation. Currently all transformations take place on CPU. IO and data transformation are the major bottlenecks of training speed, causing low GPU utilization.

The Smart Cache technique tries to solve this problem. It keeps data in memory for re-use and reduces the demand on IO and CPU resources.
How does it work?

Smart Cache determines the most effective data to cache based on the determinism of transforms. A transform is considered deterministic if it always produces the same output for the same input.

Given a chain of transforms, the most effective data to cache is the output of the longest deterministic sequence of transforms, starting from the first. By caching this, we can bypass all transforms in the sequence that produce the same result for future uses.

To implement Smart Cache, just use one of the ImagePipelineWithCache subclasses, SegmentationImagePipelineWithCache or ClassificationImagePipelineWithCache in train_config.json.
Note

If Smart Cache is used for speeding up validation during training, replace_percent should be set to 0.
### Capacity

The first issue to consider is that training datasets can be very large. Hence, we must decide how much to keep in memory. That means the cache capacity must be configurable. Another issue is that all data items are repeatedly used with equal chance in the original workflow. If the cache is not big enough to hold all items, the items that cannot fit in the cache will still be subject to the slowness of IO.
#### Replacement

Our solution is gradual replacement of cache contents. At any time, the cache pool only keeps a subset of the whole dataset. In each epoch, only the items in the cache are used for training. This ensures that data needed for training is readily available, keeping GPU resources busy. Note that cached items may still have to go through a non-deterministic transform sequence before being fed to GPU. At the same time, another thread is preparing replacement items by applying the transform sequence to items not in cache. Once one epoch is completed, Smart Cache replaces the same number of items with replacement items.

Smart Cache uses a simple “running window” algorithm to determine the cache content and replacement items. Let N be the configured number of objects in cache; and R be the number of replacement objects (R = ceil(N * r), where r is the configured replace rate).
##### Example

Suppose the dataset contains 100 items. Based on the image sizes and your computer’s RAM capacity, you decide to keep 50 items in cache with a replacement rate of 0.1 (10%). So, in each round, training will use the 50 items in cache, and the replacer will prepare 5 replacement items. After each round, 5 items in the cache are replaced with the 5 replacements.

For a segmentation task based on this scenario, the image_pipeline in the train section of train_config.json could look like this:

            

            

"image_pipeline": {
  "name": "SegmentationImagePipelineWithCache",
  "args": {
    "data_list_file_path": "{DATASET_JSON}",
    "data_file_base_dir": "{DATA_ROOT}",
    "data_list_key": "training",
    "output_crop_size": [96, 96, 96],
    "output_batch_size": 3,
    "num_workers": 2,
    "prefetch_size": 0,
    "num_cache_objects": 50,
    "replace_percent": 0.1
  }
}

        

This can be compared to the image_pipeline configuration without SmartCache:

            

            

"image_pipeline": {
  "name": "SegmentationImagePipeline",
  "args": {
    "data_list_file_path": "{DATASET_JSON}",
    "data_file_base_dir": "{DATA_ROOT}",
    "data_list_key": "training",
    "output_crop_size": [96, 96, 96],
    "output_batch_size": 3,
    "num_workers": 4,
    "prefetch_size": 10
  }
}

        

Please note that in addition to the two new parameters to configure for SegmentationImagePipelineWithCache, num_cache_objects and replace_percent, the values for num_workers and prefetch_size have changed. The value of num_workers can be experimented with to determine the best value, but prefetch_size should be set to 0 when SmartCache is used.
Note

num_cache_objects should be divisible by output_batch_size otherwise the last batch will be smaller and reduce efficiency.

###### Analysis

Suppose your model takes a total of M steps. Without Smart Cache, each step takes a long time and has to go through data loading from disk, deterministic transforms, and non-deterministic transforms.

With Smart Cache, you may still want a total of M steps. You will need more epochs, however, since each epoch now has a smaller number of steps (the number of objects in cache). But since each step now bypasses the data IO and all transformations in the deterministic sequence, it can be done much faster. Taking the training of segmentation_ct_spleen as an example, without Smart Cache, each step takes on average 1.5 seconds (with 4 dataset workers); whereas with Smart Cache, each step takes 0.5 seconds (with a single dataset worker), and the GPU usage is constantly above 90%.
Practical tips

    If the replace rate is too high the training speed might not be optimized because the replacer may not be able to complete the work on all items when the epoch has been completed.

    If too low, the window will move too slowly, hence possibly needing more epochs for convergence.

    If the data set is large and num_cache_objects for the total number of objects to keep cached in memory is set too high, the operating system may use virtual memory on disk for swapping and that will slow everything down massively.

