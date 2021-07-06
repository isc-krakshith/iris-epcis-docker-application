# IRIS-EPCIS-DOCKER-APPLICATION

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation 

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/isc-krakshith/iris-epcis-docker-application.git
```

### Open the terminal in this directory:
#### Export an environment varaible called HOST_IP with the IPv4 address of the host where the IRIS (and Angular) containers will run. eg. On Unix hosts... 

```
export HOST_IP="XXX.XXX.XXX.XXX"
```
#### Build the containers

```
$ docker-compose build
```

#### Run Angular front-end and IRIS backend containers in a single project:

```
$ docker-compose up -d
```

Once the containers are up and running, go to http://localhost:4200 to get to the UI home page


IRIS backend container provides the REST endpoints to serve the angular frontend.

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 10.1.3.
