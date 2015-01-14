## Rule Based MatchMaker (Java WS) Dockerfile


This repository is used to build [RuleBased MatchMaker Java WS](https://github.com/NickKaklanis/RuleBasedMatchMaker_RESTful_WS_Maven) Docker images.


### Environment Variables

No enviornment variables are needed to run this container.

### Port(s) Exposed

* `8080 TCP`


### Base Docker Image

* [inclusivedesign/java](https://github.com/idi-ops/docker-java/)


### Download

    docker pull gpii/rbmm-java


#### Run `rbmm-java` (RuleBased MatchMaker Java WS)


```
docker run \
-d \
-p 8080:8080 \
--name="rbmm-java" \
inclusivedesign/rbmm-java
```


### Build your own image

    docker build --rm=true -t <your name>/rbmm-java .
