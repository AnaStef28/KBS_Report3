# Plant Disease Identification: A CNN Architecture Benchmark

This repository contains a comparative analysis of three generations of Convolutional Neural Network (CNN) architectures for automated plant disease identification. The project evaluates a baseline custom CNN, a mobile-optimized MobileNetV3, and a state-of-the-art EfficientNet-B0 to determine the optimal balance between classification accuracy and computational efficiency for mobile deployment.

## Benchmarking Results

All models were trained and evaluated on the PlantVillage dataset (controlled environment) containing 54,305 images across 38 classes.

| Model Architecture | Val. Accuracy | F1-Score (Weighted) | Inference Latency |
| :--- | :---: | :---: | :---: |
| **SimpleCNN (Vanilla)** | 87.22% | 0.8723 | 32.10 ms |
| **MobileNetV3-Small** | 96.59% | 0.9657 | **23.10 ms** |
| **EfficientNet-B0** | **96.64%** | **0.9662** | 39.37 ms |

### Key Findings
* **Optimal for Mobile**: MobileNetV3-Small achieved a 41.3% reduction in latency compared to EfficientNet-B0 while maintaining nearly identical accuracy, making it the ideal candidate for real-time mobile plant care tools.
* **Transfer Learning Impact**: Utilizing pre-trained ImageNet weights resulted in a ~9.4% accuracy improvement over the scratch-built Vanilla baseline.

## Repository Structure
* `KBS3.ipynb`: Main Jupyter Notebook containing data preprocessing, training, and evaluation.
* `models/`: Directory containing trained model weights (`.pth` files).
* `Dockerfile`: Container configuration for environment reproducibility.
* `requirements.txt`: Python dependency list.

## Usage

### Option 1: Local Environment
1. Clone the repository: `git clone https://github.com/AnaStef28/KBS_Report3.git`
2. Install dependencies: `pip install -r requirements.txt`
3. Run the notebook: `jupyter notebook KBS3.ipynb`

### Option 2: Docker Implementation
To ensure a reproducible environment, you can build and run the project using the provided Dockerfile:
1. Build the image: `docker build -t plant-id-benchmark .`
2. Run the container: `docker run -it plant-id-benchmark`

## Requirements
* Python 3.12+
* PyTorch / Torchvision
* kagglehub
* scikit-learn
* matplotlib
* tqdm
