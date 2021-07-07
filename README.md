# IRIS-EPCIS-DOCKER-APPLICATION

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation 

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/isc-krakshith/iris-epcis-docker-application.git
```

### Open the terminal in this directory:
#### (OPTIONAL) The two containers may be run on different hosts by commenting out the appropriate service in  docker-compose.yml. In such a deployment, the Angular container will look for an environment varaible called HOST_IP specifying the IPv4 address of the host where the IRIS container will run. eg. On Unix hosts... 
```
export HOST_IP="XXX.XXX.XXX.XXX"
```
#### Build the containers
```
$ docker-compose build
```

#### Run Angular front-end and IRIS backend containers:
```
$ docker-compose up -d
```

Once the containers are up and running, go to http://localhost:4200 to get to the UI home page. If Angular front end is deployed remotely, replace 'localhost' with external IP address of the remote host.

IRIS backend container provides the REST endpoints to serve the angular frontend.

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 10.1.3.