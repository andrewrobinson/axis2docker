# axis2 1.6.3 
===================

issues - 2nd CMD needed to keep container running
1st CMD only works when pasted int the cli. If I have just that CMD the axisoutput dir is empty.
/tmp is a bad choice, need to create another dir to map to ±/code/axisoutput
try jdk 11
tweak wsdl options as only 2 classes are produced

ea-ultimate/289/jbr/bin/java -classpath /home/dev/IdeaProjects/wsdl/out/production/wsdl -Xmx128M org.apache.axis.wsdl.WSDL2Java -ponevault.integr8or.v12 -T1.1 -o/home/dev/IdeaProjects/wsdl/src file:/home/dev/IdeaProjects/app-voice-biometrics-listener/core/src/main/resources/wsdl/devTelephony.wsdl


investigate -T option (what is 1.1? what version do I need?)
look at existing generated classes

docker build -t andrewmcrobinson/axis2 .
docker run -p 8080:8080 -v ~/code/axisoutput:/axisoutput -d andrewmcrobinson/axis2
docker ps (to get the container id)
docker exec -ti d5e063f3ea39 sh -c "echo a && echo b"
docker exec -ti d5e063f3ea39 sh -c "/opt/axis2-1.7.9/bin/wsdl2java.sh -p onevault.integr8or.v12 -o /axisoutput -uri wsdl/devTelephony.wsdl"


# CMD ["/opt/axis2-1.7.9/bin/wsdl2java.sh -p onevault.integr8or.v12 -o /tmp -uri wsdl/devTelephony.wsdl"







https://cxf.apache.org/docs/wsdl-to-java.html


based on https://github.com/MassimoDanieli/axis2/blob/master/Dockerfile

