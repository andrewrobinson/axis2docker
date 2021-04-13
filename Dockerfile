#
# WSO2 Enterprise Service Bus 4.8.1
#
FROM java:7

RUN wget -P /opt https://downloads.apache.org/axis/axis2/java/core/1.7.9/axis2-1.7.9-bin.zip && \
apt-get update && \
    apt-get install -y zip ant maven && \
    apt-get clean && \
    unzip /opt/axis2-1.7.9-bin.zip -d /opt && \
    rm /opt/axis2-1.7.9-bin.zip

COPY telephonyService.wsdl /wsdl/telephonyService.wsdl

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 8080

CMD ["/opt/axis2-1.7.9/bin/wsdl2java.sh -p onevault.integr8or.v12 -o /tmp -uri wsdl/telephonyService.wsdl"

CMD ["/opt//axis2-1.7.9/bin/axis2server.sh"]