# aws-dev-spring-boot-jar

Various ways to build/deploy a Spring Boot application on AWS.

Based on Jenkins instance deployed on ECS
https://github.com/erwanjouan/jenkins-codebuild

Shared Jenkins Libraries
https://github.com/erwanjouan/aws-jenkins-shared


### Notes

CodeBuild is used as Jenkins Slave for building and deploying.
- No need to install aws cli on slave
- Slave permission is defined in CodeBuild service role instead of keys in Jenkins 