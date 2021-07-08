
In this folder you'll find a Dockerfile to build an Echo Service image, that will accept connections on port 9999.

You're required to do the following:

* **Git**
   * Create a public Git repo using any of the available public repos online (Github, Bitbucket, etc.).
   * Upload this project.
   * Create and upload a Jenkinsfile for the project (see next bullet).

* **Jenkins**
   * Set up a Jenkins instance somewhere (you can use your own system or a free cloud account in AWS/GCP/etc.)
   * Create a Multibranch pipeline for the Git project above.
   * Have your Jenkinsfile build the docker image and push it to hub.docker.com (see below).

* **Pushing the Image** 
   * Using a free Dockerhub account, create a public repository.
   * Have Jenkins push the image to the repo you just created.
   
* **Running the Image**
   * Use docker locally to download the image from the repo and run it locally.
   * Make sure the Echo service is working on port 9999.

