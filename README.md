# axis2 1.6.3 
===================

issues - 2nd CMD needed to keep container running
1st CMD only works when pasted int the cli. If I have just that CMD the axisoutput dir is empty.
/tmp is a bad choice, need to create another dir to map to ±/code/axisoutput
try jdk 11
tweak wsdl options as only 2 classes are produced

ea-ultimate/289/jbr/bin/java -classpath /home/dev/IdeaProjects/wsdl/out/production/wsdl -Xmx128M org.apache.axis.wsdl.WSDL2Java -ponevault.integr8or.v12 -T1.1 -o/home/dev/IdeaProjects/wsdl/src file:/home/dev/IdeaProjects/app-voice-biometrics-listener/core/src/main/resources/wsdl/devTelephony.wsdl




docker build -t andrewmcrobinson/axis2 .
docker run -p 8080:8080 -v ~/code/axisoutput:/tmp -d andrewmcrobinson/axis2


https://cxf.apache.org/docs/wsdl-to-java.html


based on https://github.com/MassimoDanieli/axis2/blob/master/Dockerfile

