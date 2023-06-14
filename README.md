
# Employee_Portal_Application

I created a Employee_Portal_Application to automate the end to end process of creating the AWS infrastructure, continuously integrate and deploy the application to AWS EKS Kubernetes Cluster
## DEVOPS Continuous integration and Continuous deployment
![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/c922ea07-a051-4d22-a650-f7ab7068d74e)


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


 ## OUTPUT
 ### Employee_Portal_Application Website:
 ![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/cc803842-45f3-49b1-aa46-61089d5cdbdf)
 ### Adding Employee information:
 ![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/4cd338ba-6f24-46a0-9d86-e8a54afc171d)
 ![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/8fe6d176-d6e2-4e4e-9226-b886cc48beaf)
 ### Edit Employee information:
 ![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/de7cebee-c946-4ae2-89c3-424e88572a69)
 ![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/eb1c8258-8d6b-491d-a8d5-d476ca4bfa48)
 ### Delete Employee:
 ![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/0e671284-9028-4354-8091-84ac1bfe9474)
 Delete the Sita information
 ![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/cb5bc12d-7496-4645-aa02-9dd4d6476428)

 
This end-to-end Jenkins pipeline will automate the entire CI/CD process for a Python application, from code checkout to production deployment, using popular tools like Docker,Argo CD, Helm, and Kubernetes.
 
