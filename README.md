[![Mustafa Al-tekreeti](https://circleci.com/gh/Al-tekreeti/ML-Microservices.svg?style=svg)](https://github.com/Al-tekreeti/ML-Microservices/tree/master)

## Project Summary

In this project, a machine learning based prediction model is operationalized. The model predicts house prices in Boston, USA given a set of features, such as the crime rate, average number of rooms, pupil-teacher ratio by town, to name few. The model trained with the data set that is published in <a href="https://www.kaggle.com/c/boston-housing" class="mw-redirect" title="Kaggle site">Kaggle site.</a> The prediction model is developed as a flask python application, containerized using docker, and deployed locally using kubernetes for testing and debugging purposes. The quality of the code is tested by importing the projrct repo into CircleCI.

## Usage

The commands used in this illustration have been tested in a linux-based machine. For other types of systems, you may need to modify some commands. First of all, clone the repo. Then, setup an isolated environment by running:
<code>python3 -m venv ~/.env1</code>
<code>source ~/.env1/bin/activate</code>
Then, install the required libraries by running:
<code>make install</code>
The dependencies are listed in the <code>requirements.txt</code>. Now, to run the application, you have the following three choices:
1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
To run the app in a docker conatiner, you need to have a [docker](https://www.docker.com) account and installation. To run the app in a local Kubernetes cluster, you need to install [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
