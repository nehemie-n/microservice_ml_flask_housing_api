[![nehemie-n](https://circleci.com/gh/nehemie-n/microservice_ml_flask_housing_api.svg?style=svg)](https://github.com/nehemie-n/microservice_ml_flask_housing_api)

## **Project Overview**

In this project, I applied the skills I have acquired in the course to operationalize a Machine Learning Microservice API.

I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests the ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### **Project Tasks**

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

- Test your project code using linting
- Complete a Dockerfile to containerize this application
- Deploy your containerized application using Docker and make a prediction
- Improve the log statements in the source code for this application
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## **Directory & Files**

Below are critical files for the project and the purpose they serve

- `app.py` : Main app entry for python
- `model_data` : Model files
- `output_txt_files` : Docker and Kubernetes logs output files
- `Dockerfile` : Docker configuration file
- `dockerignore` : Just like `.gitignore` for git this file helps docker to ignore some files and repositories during some comands like copy
- `Makefile` : Contains commands for installing linting and testing. Might need to pre-install some depencies such as `hadolint`.
- `requirements.txt` : Python dependencies
- `run_docker.sh` : builds and runs the docker image
- `upload_docker.sh` : Uploads docker image to my docker hub
- `run_kubernetes.sh` : Fetches the uploaded docker image and runs it locally with minukube. Requires the installation of minikube and start it with `minikube start`
- `make_predictions.sh` : Calls the API for testing

---

## **Setup the Environment**

- Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

- Run `make install` to install the necessary dependencies

### **Running Locally `app.py`**

    1. Standalone:  `python app.py`
    2. Run in Docker:  `./run_docker.sh`
    3. Run in Kubernetes:  `./run_kubernetes.sh`

### **Kubernetes Steps**

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl
