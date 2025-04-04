# Transfer learning
https://blogs.nvidia.com/blog/what-is-transfer-learning/

### Transfer Learning Explained

Here’s how it works: First, you delete what’s known as the “loss output” layer, which is the final layer used to make predictions, and replace it with a new loss output layer for horse prediction. This loss output layer is a fine-tuning node for determining how training penalizes deviations from the labeled data and the predicted output.

Next, you would take your smaller dataset for horses and train it on the entire 50-layer neural network or the last few layers or just the loss layer alone. By applying these transfer learning techniques, your output on the new CNN will be horse identification.

