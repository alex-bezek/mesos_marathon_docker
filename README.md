
This only works on a virtual machine, not docker for mac. Use this reference to
https://docs.docker.com/docker-for-mac/docker-toolbox/


# Steps to Setup
Once docker toolbox (with docker-machine) is installed, use `docker-machine env` to get the ip address. It should be something like `192.168.99.100`.

1. `echo '192.168.99.100   dockerhost' | sudo tee -a /etc/hosts`
1. `docker-machine create --virtualbox-memory "2048"  --driver virtualbox default`
1. `eval $(docker-machine env)`
1. `docker volume create --name=data`
1. `docker-compose up`

##### Run the image via
`./apps/node-hello-world/deploy_nodejs_hello.sh`

##### Your Image should be visible here
http://dockerhost:5000/v2/node-hello-marathon/tags/list
