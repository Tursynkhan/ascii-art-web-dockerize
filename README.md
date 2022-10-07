### Functional

##### Has the requirement for the allowed packages been respected? (Reminder for this project: only [standard packages](https://golang.org/pkg/))

###### Does the project have a DockerFile?

##### Try running the [command](https://docs.docker.com/engine/reference/commandline/image_build/) `"docker image build o[OPTIONS] PATH | URL | -"` to build the image using the project Dockerfile. 
##### Example : 
`"docker image build -f Dockerfile -t <name_of_the_image> ."` or  `"make build"`

```
student$ docker images
REPOSITORY              TAG                             IMAGE ID            CREATED             SIZE
<name of the image>     latest                          85a65d66ca39        7 seconds ago       795MB
```

##### Run the command `"docker images"` to see all images. Is the docker image built as above?

##### Try running the [command](https://docs.docker.com/engine/reference/commandline/container_run/) `"docker container run [OPTIONS] IMAGE [COMMAND] [ARG...]"` to start the container using the image just created. (example : `"docker container run -p <port_you_what_to_run> --detach --name <name_of_the_container> <name_of_the_image>"`)

##### Example : 
`"docker container run -p 8080:8080 --detach --name <name_of_the_container> <name_of_the_image>"` or  `"make run"`

```
student$ docker ps -a
CONTAINER ID        IMAGE                  COMMAND                  CREATED             STATUS              PORTS                    NAMES
cc8f5dcf760f        dockerize             "./server"               6 seconds ago       Up 6 seconds        0.0.0.0:8080->8080/tcp   web
```

###### Run the command `"docker ps -a"` to see all containers. Is the docker container running as above?

##### Try running the [command](https://docs.docker.com/engine/reference/commandline/exec/) `"docker exec [OPTIONS] CONTAINER COMMAND [ARG...]"`. (example : `"docker exec -it <container_name> /bin/bash"`) and do a `"ls -l"` to see the file system.

```
student$ docker exec -it postgres sh
I have no name!@51c2efe2d366:/$ ls -l
drwxr-xr-x   1 root root 4096 Dec 28 15:31 bin
-rwxr-xr-x   2 root root 4096 Sep  8 10:51 server.go
drwxr-xr-x   2 root root 4096 Sep  8 10:51 templates
I have no name!@51c2efe2d366:/$ exit
exit
student$
```
##### Tap the link
[localhost:8080](http://localhost:8080)