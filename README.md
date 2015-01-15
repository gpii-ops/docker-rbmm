## Rule Based MatchMaker (Java WS) Dockerfile


This repository is used to build [RuleBased MatchMaker Java WS](https://github.com/NickKaklanis/RuleBasedMatchMaker_RESTful_WS_Maven) Docker images.


### Environment Variables

No environment variables are needed to run this container.


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
gpii/rbmm-java
```


### Build your own image

In order to build an image the RuleBasedMatchMaker_RESTful_WS_Maven repository working directory should exist wherever the contents of this directory are saved. For transparent image versioning that maps directly to the official Git repository each new image should be tagged using the repository's short commit hash. For example:

    git clone https://github.com/NickKaklanis/RuleBasedMatchMaker_RESTful_WS_Maven.git -b review3

    docker build --rm=true -t <your name>/rbmm-java:$(git --git-dir=universal/.git --work-tree=universal rev-parse --short HEAD) .
