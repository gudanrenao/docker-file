FROM openjdk:10-jdk
COPY *.jar /app.jar
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]
