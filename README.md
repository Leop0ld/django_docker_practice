# Django & Docker(Compose) (a.k.a Double D)

> 참고한 곳: [raccoonyy님의 블로그](http://raccoonyy.github.io/docker-usages-for-dev-environment-setup/){:target="_blank"}

주요 명령어

1. 서버 실행하기

```shell
$ docker-compose up
```

2. 이미지를 새로 빌드하고 서버 실행하기
> EX) Dockerfile-dev 가 변경되었을 때

```
$ docker-compose up --build
```

3. 빌드된 이미지 제거하기

```
$ docker-compose rm
```

4. 실행중인 컨테이너 중지하기

```
$ docker-compose stop
```

5. 데이터베이스 초기화하기

```
$ docker-compose down --volumes
```
