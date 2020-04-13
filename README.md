# docker-HelloWorld

This is a demo docker project for the [repository](https://hub.docker.com/repository/docker/yhyhbo/helloworld).

## Try this repository

1. pull it

    ```sh
    docker pull yhyhbo/helloworld
    ```
    
2. run it

    ```sh
     docker run yhyhbo/helloworld
    ```

    or enter into a bash terminal

    ```sh
    docker run -it yhyhbo/helloworld bash
    ```



## Build your own repository

1. write a Dockerfile

   ```
   # Base Images
   FROM centos:7
   
   MAINTAINER nju.hyhb@gmail.com
   
   RUN mkdir -p /home
   
   ## copy files
   ADD . /home/
   
   ## setting the working directory
   WORKDIR /home/
   
   ## execute the commands after the container start
   CMD  ["sh", "run.sh"]
   ```

2. build it (replace the <> parts with your own)

   ```sh
   docker image build -t <username>/<repo name>:<version> .
   ```

3. push it

   ```sh
    docker push <username>/<repo name>:<version>
   ```

   


