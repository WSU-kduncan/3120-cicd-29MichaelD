## Documentation

## Part 1
- CI Project Overview
  - I am building an image that will run a webserver inside of a container, this is because if changes are made to a website, application, etc. They can be tested inside of a safe enviornment before the changes are published. The tools being used in this part of the project are only docker on WSL2, dockerhub, and WSL2
- Run project locally 
 - To install docker, all that must be done is docker can be installed online, it will attach to a preexisting version of WSL2, docker depends on WSL2 since it will automatically attach to it, when a container is run, a foreground process is required for the container to stay running, otherwise it will just exit
  - To build an image from the dockerfile, inside the file itself, it must specify the template image to be used(FROM), I specified httpd:latest to get the lastest version of httpd. Next, the index.html file which contains the content to be served must then be copied to the container(COPY). Last, the port to be exposed(EXPOSE) must be specified to allow it to map to a host port. Once the Dockerfile has been created, inside the directory with the Dockerfile, command "docker build -t "name" ." will build the image using the Dockerfile created.
  - To run the container, command "docker run -d --name "name" -p 80:80 "image name"" will run the container with the image from above.
  - To view that the project is running, in your browser "127.0.0.1:80" will show the content being run inside the container if everything has been done correctly.
## Part 2