# 스프링 + 도커 실습 과제

간단하게 구현한 회원 관리 웹 서버를 컨테이너 이미지로 만들어보는 과제입니다.

## 하위과제
* 도커 이미지 빌드하기
  * 실행 가능한 웹 서버 도커 이미지를 빌드할 수 있는 Dockerfile을 만든다.
    * Runtime 용 이미지를 만들기 위해서 [Multi-Stage](https://docs.docker.com/build/building/multi-stage/) 빌드를 활용한다.
   
  ```
  docker build -t moonsungkim/docker-practice .
  ```

  ARM64용 이미지 빌드하기
  ```
  docker buildx build --platform=linux/amd64 -t moonsungkim/docker-practice-arm64 .
  ```

  * 빌드한 이미지를 [Docker Hub](https://hub.docker.com/)와 같은 퍼블릭 이미지 Repo에 푸시한다.
  ```
  docker push moonsungkim/docker-practice
  ```

* 도커 이미지를 실행해서 동작 확인하기
  * 위에서 빌드한 도커 이미지를 실행해서 정상적으로 실행되는지 확인

* docker-compose를 사용하여 도커 이미지 실행하기
