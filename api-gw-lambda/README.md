# Api Gateway Lambda
 
Simplistic deployment on ApiGateway with Lambda proxy integration.

## Deployment with CodeDeploy

https://www.youtube.com/watch?v=mYcRPKeCPXc

- Deploy a first version of the lambda (e.g. version is 15)
- Modify the code
- Redeploy the lambda code (e.g. version becomes 16)

Go to CodeDeploy
- Application > DeploymentGroup > Create Deployment
- Use AppSpec editor (YAML), paste the following :

```yaml
version: 0.0
Resources:
  - myLambdaFunction:
      Type: AWS::Lambda::Function
      Properties:
        Name: aws-dev-spring-boot-jar-api-gw-lambda
        Alias: alias
        CurrentVersion: 15
        TargetVersion: 16
```
[Create Deployment] --> Alias "alias" will shift from Lambda version 15 to 16

TODO: Hooks..

### References

https://gist.github.com/balintsera/7c45340ad31d1856d6cdb1fd9a09fc7c

Not needed here when spring-boot-starter-parent is used in pom but in case not > 
[Lambda Spring Boot2](https://github.com/awslabs/aws-serverless-java-container/wiki/Quick-start---Spring-Boot2)

https://medium.com/@vallepu.sravanthi/creating-stages-in-api-gateway-adding-alias-in-lambda-465af563f0ac)