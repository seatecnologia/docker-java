# https://github.com/seatecnologia/docker-java

## Maintained by: Edson Ma

This is an unofficial git repo for Docker Container with Oracle Java JDK. 

It was created in order to organize Java Projects of our SEA Tecnologia organization.

The default image contains a linux Debian Wheezy and Java jdk-8u162 and you can find other flavours of Linux and Java JDK looking for the branches of this project
 
# Got R00t ?!
## How to build your image
`docker build -t <user>/<project>:<tag>`
Example: `docker build -t seatecnologia/docker_java:debian7_jdk8u162  .`

## How to push it to dockerhub
First export your username 
`export DOCKER_ID_USER="username"`

Later login your account
`docker login`

Tag your image if it is in other name 
`docker tag <LOCAL_REPO>:<LOCAL_TAG> $DOCKER_ID_USER/<REMOTE_REPO>:<TAG>`
Example: `docker tag seatecnologia:docker-java seatecnologia/docker_java:debian7_jdk8u162`

Push it 
`docker push <DOCKER_UD_USER>/<REPO>:<TAG>`
Example: `docker push seatecnologia/docker_java:debian7-slim_jdk8u162`

# That's all folks!
www.seatecnologia.com.br 


