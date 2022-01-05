[![CircleCI](https://circleci.com/gh/abhishek-raghav08/DevOps_Microservice/tree/master.svg?style=svg)](https://circleci.com/gh/abhishek-raghav08/DevOps_Microservice/tree/master)

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

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
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

### Instructions & updates done:
**Updates done:**
  1. Deliverables are dded to https://github.com/abhishek-raghav08/DevOps_Microservice/tree/master
  2. updated files are:
 
 *docker_out.txt      : TASK 3 contains the log information by running app.py in docker. 
 
 *kubernetes_out.txt  : Contains the log information by running app.py in docker.
 
 *run_docker.sh        : Task 2: script written to docker image and run flask app.
 
 *run_kubernetes.sh   : Task 6: updates to "Deploy docker the Kubernetes"
 
 *upload_docker.sh    : Task 4- updated for "Upload your Docker image"
 
 *app.py              : Task 3: updated to display prediction.
 
 *README.md           : Updated with CIrcle CI batch, update fiel information and instructions to run the script.
 
**Instructions:**
Task 1: Complete the Dockerfile
	1. dockerfile was completed and tested (make lint) using instructions given. I have used example given during the course to build the docker file.

Task 2: Run a Container & Make a Prediction
	1. run_docker.sh was updated before running. To build docker image and run flask app
		Successfully built a8907e3bce2f
		Successfully tagged apip:latest
	2. ./run_docker.sh was executed and in parallel make_prediction.sh exectuted in another terminal to make prediction.

Task 3: Improve Logging & Save Output

	1. app.py was updated to discplay prdiction as well.
	2.image was built with tag.
	3../run_docker.sh was executed and in parallel make_prediction.sh exectuted in another terminal to make 	improved prediction.
	4.results are captured in docker_out.txt file.

Task 4: Upload the Docker Image
  1. upload_docker.sh was updated using the insturction given and examples used in course.
  2. upload_docker.sh executed to push the docker image to docker hub.
  
Task 5: Configure Kubernetes to Run Locally
  1. Mini Kube was started using "minikube start"
  2. "Minikube kubectl" config view was used to view certificate authority and server:
   certificate-authority: /home/ec2-user/.minikube/ca.crt
    extensions:
    - extension:
        last-update: Tue, 04 Jan 2022 14:59:23 UTC
        provider: minikube.sigs.k8s.io
        version: v1.24.0
      name: cluster_info
    server: https://192.168.49.2:8443
  name: minikube

Task 6: Deploy with Kubernetes and Save Output Logs
  1. run_kubernetes.sh was updated using the instructions given and examples demonstrated.
  2. run_kubernetes.sh was executed first time 
  3. "kubectl get pod" was executed to check status of pod.
  4.   ./run_kuberenets.sh was executed again after checking pod status "Running".
  5.   ./make_prediction.sh was executed from separate terminal.
  6.   Output was saved in "DevOps_Microservice/output_txt_files/kubernetes_out.txt"
      NAME                    READY   STATUS    RESTARTS        AGE
      apip-5cb8796b5f-dnd5r   1/1     Running   1 (6m23s ago)   26m
      Forwarding from 127.0.0.1:8000 -> 80
      Forwarding from [::1]:8000 -> 80
      Handling connection for 8000

Task 7: [Important] Delete Cluster
  1. cluster was deleted using "minikube delete"

Almost Ready for Project Submission
  1. Push your work to a Github repository: NEw repository was created to push the deliverable files: https://github.com/abhishek-raghav08/DevOps_Microservice/tree/master
  
Task 8: CircleCI Integration
  1. Circle CI integration was done by creating the config file and copying from source given.
  2. "Run lint" Job executed successfully.
  3. Badge is shown in README.md file by using the link given in "Status Badge"

Task 9: README.md
  1. README.md file is updated
