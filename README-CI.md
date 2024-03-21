# Documentation Part 1
- Overview
  - What:
    - We are creating a Docker Image using a Dockerfile to set up a container that servers web content using apache2 
  - Why:
    - This is to show that with images and containers there is ease of portability, scalability and allows isolation of processes
  - Tools:
    - Docker Desktop for WSL, Github, Dockerfile (Ubuntu base image, apache2) 
- How To
  - Install docker and dependencies
    - I'm using Windows so I downloaded Docker Desktop online and ran the installer which also downloaded the dependancies and started Docker Desktop to then use in WSL
![docker installed](./images_Project4/docker_v.png)
  - Build an image from the `Dockerfile`
    - Once the dockerfile is created and configured use `docker build -t <name_of_image_here>:<tag> .`
      - The `-t` lets you name the image
      - The `.` specifies PATH which in this case in the context of docker build it located the Dockerfile in my current directory I am in
![docker installed](./images_Project4/dockerfile_configurations.png)
![docker installed](./images_Project4/dockerimagebuild.png)
  - Run the container
    - To run the container use `docker run --name <container_name_here> -d -p 80:80 <image_name_here>:<tag>`
      - The `-d` is detached mode which runs the container in the background
      - The `-p` is portfowarding the host port 80 and mapping it to the container on port 80 so traffic on host port 80 is forwarded to port 80 on the container
![docker installed](./images_Project4/dockerrun.png)
  - View the running container
    - To view the running container you can go to your web browser and type localhost or you can type in the loopback interface ip
![docker installed](./images_Project4/runningcontainer.png)
# Resources
  - https://docs.docker.com/reference/cli/docker/image/build/
  - https://www.digitalocean.com/community/tutorials/apache-web-server-dockerfile 
