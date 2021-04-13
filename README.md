# axis2 1.6.3 
===================

docker build -t andrewmcrobinson/axis2 .
docker run -p 8080:8080 -d andrewmcrobinson/axis2 

docker run --rm --name your_container_name -p 8080:8080 andrewmcrobinson/axis2




Docker image to install and run Apache Axis2 . It uses the [dockerfile/java](https://index.docker.io/u/dockerfile/java/) as its base image.


The dockerfile will:

* Use `wget` to pull the Axis2 1.6.3 ZIP from Apache web server into the container `/opt` folder.
* Install `zip` `ant` `maven`.
* Unzip the Axis2 1.6.3 ZIP.
* Remove the Axis2 1.6.3 ZIP.
* Expose the container port `800`.
* Set the Axis2 `axis2server.sh` start-up script as the container start-up command.

### Usage
* To pull: `docker pull massimodanieli/axis2`
* To build: `docker build --rm -t your_image_name github.com/massimodanieli/axis2`
* To run: `docker run --rm --name your_container_name -p 8080:8080 your_image_name`
* To access axis2 web page, navigate to `https://localhost:8080`


