## Project 5

## Part 1
- In this part we are using semantic versioning to keep older versions of images so that if an image doesnt work with certain hardware or software, you can roll back to an older version
- To generate a tag in github command "git tag -a "v*.*.*""
- The workflow is triggered when a new tag is pushed to github, it will push that tag to github as well as pushing the new version of the image to dockerHub
- https://hub.docker.com/repository/docker/dmichael29/project4/general

## Part 2
- To install docker on your instance you must run a series of commands 
  - "sudo apt update"
  - "sudo apt install docker.io"
- The container restart script 
  - This script will stop the current running container, remove it, then pull the latest image from dockerhub and then start a container using that image
  - This script is located is the user's home directory
- Setting up webhook on the instance 
  - run the command "sudo apt-get install webhook" 
  - To start the webhook, you can run the command "sudo webhooks -hooks 'path to config file' -verbose"
- The task definition file 
  - When the webhook is active, it will listen for any new images added to dockerhub, when there is a new image, it will stop the container, remove it, pull the latest image from docker hub, and run that image in a new container
  - On my instance, the hook task definition file is located in the home directory of the user 
- How to configure DockerHub to message the listener 
  - On dockerHub inside of the repository, click on webhooks and then create. Give it a name and set it to listen on "http://hostIp:port/hooks/id"
