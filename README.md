# AI.SLAM - SLAM for Outdoor Arable Fields

This repository contains a SLAM (Simultaneous Localization and Mapping) implementation designed for outdoor arable fields. It features a stationary robot with a fixed-axis turning motion, creating circular paths while mapping the environment. The primary focus is on harvesting vegetables in a dynamic, ever-changing environment to ensure variety and freshness.

## Table of Contents

- [AI.SLAM - SLAM for Outdoor Arable Fields](#aislam---slam-for-outdoor-arable-fields)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Setup and Installation](#setup-and-installation)
    - [Prerequisites](#prerequisites)
  - [Usage](#usage)
  - [Testing](#testing)
  - [Contributing](#contributing)
  - [Data](#data)
 

## Introduction

AI.SLAM is designed to enable autonomous navigation and mapping of agricultural fields using SLAM techniques. It integrates well with various sensors and tools necessary for outdoor environments, ensuring high-quality and real-time mapping of arable fields.

## Setup and Installation

### Prerequisites

Before setting up, ensure you have the following tools and dependencies:

- ROS 2 (Recommended version: Foxy or later)
- C++ compiler (GCC 8 or later)
- Python 3.8 or higher
- Additional libraries like OpenCV, PCL, etc. (Check `requirements.txt` for specifics)

## Usage

To launch the SLAM system, use the following command:

ros2 launch ai_slam <launch_file>.launch.py

Replace <launch_file> with the appropriate launch file for your configuration.
Structure

The repository is organized into the following directories:

    src/: Contains the core SLAM implementation and sensor integration.
    data/: Stores sample datasets and configurations.
    scripts/: Includes utility scripts for preprocessing data and launching tests.
    tests/: Unit and integration tests for the system's components.
    third_party/: Third-party libraries and dependencies used in the project.

## Testing


Make sure the system is properly set up and dependencies are installed before running tests.
## Contributing

We welcome contributions! To contribute:

    Fork the repository.
    Create a feature branch (git checkout -b feature-name).
    Commit your changes (git commit -am 'Add new feature').
    Push to the branch (git push origin feature-name).
    Submit a pull request.

Please ensure all contributions adhere to the coding standards and include necessary documentation.
License

This project is licensed under the MIT License - see the LICENSE file for details.


## Data
Datasets used for testing and validation. Datasets for training. Datasets for ground truth evaluation.
