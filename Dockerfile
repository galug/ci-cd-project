#SpringBoot 구동에 필요한 jdk11
FROM openjdk:17

#변수 생성(상대 경로로 작성)
ARG JAR_FILE=build/libs/ci.cd.project-0.0.1-SNAPSHOT.jar

#(추가할 파일 : 이름) -> Docker 컨테이너 내부에 생성된다.
COPY ${JAR_FILE} app.jar

#(image 의 container 에서 필요한 저장소 경로)
VOLUME /tmp

#(실행할 명령어, 컨테이너 내부에 생성될 경로로 생각)
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "app.jar"]
