

## Understanding the Spring Petclinic application with a few diagrams


<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

I created a pet-clinic project to automate the end to end process of creating the AWS infrastructure, continuously integrate and deploy the application to AWS EKS Kubernetes Cluster
## DEVOPS Continuous integration and Continuous deployment


## Prerequisites
Here are the step-by-step details to set up an end-to-end Jenkins pipeline for a Java application using SonarQube, Argo CD, Helm, and Kubernetes:

### Prerequisites:

 1. Jenkins server
 2. Kubernetes cluster
 3. Argo CD
 4. Terraform ( To create Jenkins Server on AWS)
 5. ansible ( To install jenkins,docker)

# Steps

## 1. Git Setup:
         1. Create a new repository on GitHub to store the Employee portal application.

## 2. Infrastructure setup using Terraform:
         1. Use Terraform to create a new VPC, subnets, and security groups in AWS.
         2. Use Terraform to create an AWS EC2 instance to host the Jenkins Server.
         3. Use Terraform to create an AWS ECR repository to store Docker images.
         4. Use Terraform to create an AWS EKS cluster to run the SPA.
         5. Use Terraform to create a S3 bucket for store the Terraform statefile and DynamoDB table for statelocking

## 3. Ansible:
         1. Integrate Ansible with Terraform to build the environment on the AWS EC2 instance (Jenkins_Server).
         2. Install the following packages using Ansible playbook:
            2.1 Jenkins
            2.2 Docker

## 4. Jenkins:
         1. Log in to the Jenkins server and configure Jenkins by Install the necessary Jenkins plugins:
            1.1 Git plugin
            1.2 docker
            1.3 Pipeline plugin

        2. Create a new Jenkins pipeline:
           2.1 In Jenkins, create a new pipeline job and configure it with the Git repository URL for the Employee portal application.
           2.2 Add a Jenkinsfile to the Git repository to define the pipeline stages.

        3. Define the pipeline stages:
            Stage 1: Checkout the source code from Git.
            Stage 2: Build the Employee portal application using Docker.
            Stage 3: Run tests using flak8 and pytest.
            Stage 4: Push the Docker Image into Repository.
            Stage 5: Updated deployment.yaml with new docker image
            Stage 6: Deploy the application to a test environment using Helm.
            Stage 7: Run user acceptance tests on the deployed application.
            Stage 8: Promote the application to a production environment using Argo CD.

        4. Configure Jenkins pipeline stages:
            Stage 1: Use the Git plugin to check out the source code from the Git repository.
            Stage 2: Use the docker plugin to build the Employee portal application.
            Stage 3: Use flak8 and pytest run unit tests.
            Stage 4: Push the Docker Image into Repository.
            Stage 5: Use the Kubernetes Continuous Deploy plugin to deploy the application to a test environment using Helm.
            Stage 6: Use a testing framework like Selenium to run user acceptance tests on the deployed application
            Stage 7: Updated deployment.yaml with new docker image
            Stage 8: Use Argo CD to promote the application to a production environment.
            


        5. Set up Argo CD:
            Install Argo CD on the Kubernetes cluster.
            Set up a Git repository for Argo CD to track the changes in the Helm charts and Kubernetes manifests.
            Create a Helm chart for the Java application that includes the Kubernetes manifests and Helm values.
            Add the Helm chart to the Git repository that Argo CD is tracking.

        6. Configure Jenkins pipeline to integrate with Argo CD:
           6.1 Add the Argo CD API token to Jenkins credentials.
           6.2 Update the Jenkins pipeline to include the Argo CD deployment stage.

        7. Run the Jenkins pipeline:
           7.1 Trigger the Jenkins pipeline to start the CI/CD process for the Python application.
           7.2 Monitor the pipeline stages and fix any issues that arise.

 
This end-to-end Jenkins pipeline will automate the entire CI/CD process for a Python application, from code checkout to production deployment, using popular tools like Jenkins, Argo CD, Helm, and Kubernetes.
 
 