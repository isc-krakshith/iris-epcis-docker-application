# IRIS-EPCIS-DOCKER-APPLICATION

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation 

Clone/git pull the repo into any local directory

```
$ git clone https://github.com/isc-krakshith/iris-epcis-docker-application.git
```

### Open the terminal in this directory:
#### (OPTIONAL) The two containers may be run on different hosts by commenting out the appropriate service in  docker-compose.yml. Also, the backend (IRIS) webserver may be mapped to a host port other than 52773(default). In such a deployment, the frontend container will look for an environment varaible called HOST_IP specifying the IPv4 address, and HOST_PORT specifying the port on the host where the IRIS container will run. The frontend will always locate the IRIS server if both are running on the same host. But if either the frontend and backend hosts are not the same or the IRIS webserver is not running on the default port, please export one or both environment variables. eg. On Unix hosts... 
```
export HOST_IP="XXX.XXX.XXX.XXX"
export HOST_PORT="XXXX"
```
##### The backend (IRIS) service may be mapped to a host port other than 52773, which is the default IRIS webserver port. Same applies to frontend, which may be run on a port other than 4200. Change the port mapping in docker-compose.yml as such...
```
    ports:
    - "51773:51773"
    - "9092:52773"
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