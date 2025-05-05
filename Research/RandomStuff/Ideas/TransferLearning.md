# 🧠 Transfer Learning

A quick overview of what transfer learning is and how it can be used in deep learning applications.

## 📚 Transfer Learning Explained

[What is Transfer Learning? – NVIDIA Blog](https://blogs.nvidia.com/blog/what-is-transfer-learning/)

Transfer learning is a machine learning technique where a model developed for one task is reused as the starting point for a model on a second task.

### 🔁 How It Works

1. **Remove the original loss output layer** from a pre-trained network — the layer responsible for the original prediction task.
2. **Replace it with a new loss output layer**, designed for your specific task (e.g., horse identification).
3. **Train** either:
   - The entire network,
   - Just the last few layers, or
   - Only the new loss output layer,
   using your smaller task-specific dataset.

This allows the model to retain the feature extraction power of the pre-trained network while adapting to the new task efficiently.

> ✅ Example: Starting with a 50-layer CNN trained for image classification, you swap the final layer and retrain on horse images to create a custom horse-identification model.
