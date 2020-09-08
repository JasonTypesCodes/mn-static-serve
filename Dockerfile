FROM openjdk:14-alpine
COPY build/libs/mn-static-serve-*-all.jar mn-static-serve.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "mn-static-serve.jar"]