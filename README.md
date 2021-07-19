# IRIS-EPCIS-DOCKER-APPLICATION

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation 

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/isc-krakshith/iris-epcis-docker-application.git
```

### Open the terminal in this directory:
#### (OPTIONAL) The frontend will always locate the IRIS server if both are running on the same host and on default ports. But if either the frontend and backend (IRIS) hosts are different and/or IRIS webserver is running on any but the default port (52773), please export one or both environment variables. eg. On Unix hosts... 
```
export HOST_IP="XXX.XXX.XXX.XXX"
export HOST_PORT="XXXX"
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