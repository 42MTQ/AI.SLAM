# Image Pipeline

The ImagePipeline class loads and transforms data for feeding into the network. This pipeline uses TensorFlow as a backend to create and manage the input graph.

As mentioned in Smart Cache, this can also incorporate caching to achieve faster performance. Additionally, Smart Cache provides more details on SegmentationImagePipelineWithCache and its arguments, and a pipeline example with SegmentationImagePipeline.

ImagePipeline is for internal use. Instead, please use one of the following based on ImagePipeline:

    ClassificationImagePipeline

    ClassificationImagePipelineWithCache

    SegmentationImagePipeline

    SegmentationImagePipelineWithCache

## Keras Image Pipeline

KerasImagePipeline is a version of input pipeline that uses Keras as the backend for managing workers and threads. Please use one of the following classes to access the pipeline:

    ClassificationKerasImagePipeline

    ClassificationKerasImagePipelineWithCache

    SegmentationKerasImagePipeline

    SegmentationKerasImagePipelineWithCache

### KerasPipeline vs ImagePipeline

KerasImagePipeline is ~30% faster than ImagePipeline for classification tasks. They also provide a sampling feature (described below), that allows users to deal with imbalanced data. We recommend using KerasImagePipeline for these tasks.

For segmentation tasks, the advantages vary from +5% to +15% performance. For these tasks, if you have a large amount of small files, KerasImagePipeline is likely to give a significant boost in performance. If you have a small number of big data files, gains will be minor. Experiment with different parameters to find optimal performance.

#### Reference

https://docs.nvidia.com/clara/clara-train-archive/3.1/nvmidl/concepts/image_pipeline.html
