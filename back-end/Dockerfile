#ARG IMAGE=intersystemsdc/irishealth-community:2020.4.0.547.0
ARG IMAGE=store/intersystems/irishealth-community:2020.4.0.547.0
#ARG IMAGE=docker.iscinternal.com/intersystems/irishealth:2020.4.0-latest
FROM $IMAGE

USER root

# prepare durability
RUN	mkdir -p /external/data && \
	chown -R ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /external && \
	chmod -R g+w /external

WORKDIR /opt/epcis

COPY  Installer.cls .
COPY  InstallerUserNS.cls .
COPY  InstallerHSLIBNS.cls .
COPY  src/epcis /opt/epcis/epcis
COPY  src/user /opt/epcis/user
COPY  src/hslib /opt/epcis/hslib
COPY  iris.script /tmp/iris.script

RUN mkdir /opt/epcis/hl7msg
RUN mkdir /opt/epcis/hl7msg/in
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/epcis/hl7msg/in
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/epcis/hl7msg
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/epcis
RUN chmod ugo+rwx /opt/epcis/hl7msg/in

USER ${ISC_PACKAGE_MGRUSER}

# run iris and initial 
RUN iris start $ISC_PACKAGE_INSTANCENAME \
	&& iris session $ISC_PACKAGE_INSTANCENAME < /tmp/iris.script \
	&& iris stop $ISC_PACKAGE_INSTANCENAME quietly
