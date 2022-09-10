# Api Gateway Lambda
 
Simplistic deployment on ApiGateway with Lambda proxy integration.

## Deployment with CodeDeploy

https://www.youtube.com/watch?v=mYcRPKeCPXc

- Deploy lambda code to unqualified ARN (with no version). The latest version of Lambda is refered as $LATEST.
- [Action > Publish new version]
    - provide a description e.g v1
    - this will increment the lambda version.
- [Action > Create alias]
    - provide a name for the alias (CodeDeployVersion)
    - link it to version number
- Change code and upload
- [Action > Publish new version]
    - provide a description e.g v2
    - test and verify version was correctly deployed

### References

https://gist.github.com/balintsera/7c45340ad31d1856d6cdb1fd9a09fc7c

[Quick start Spring Boot2](https://github.com/awslabs/aws-serverless-java-container/wiki/Quick-start---Spring-Boot2)