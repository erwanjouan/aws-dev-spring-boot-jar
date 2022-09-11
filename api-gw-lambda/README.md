# Api Gateway Lambda
 
Sample deployment on Api-Gateway with Lambda proxy integration. Version switch is done via CodeDeploy.

## Deployment with CodeDeploy

- Deploy a first version of the lambda. Cloudformation will :
    - create the initial version (e.g. version is 15) 
    - create an alias and link it to the initial version 
- Modify the code and redeploy
- Go to latest (unqualified ARN) and publish a new version (e.g. version adds a 16 entry)
- In order api Gateway to serve the new version. Go to CodeDeploy;
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
    - [Create Deployment] --> Alias "alias" will shift from Lambda version 15 to 16

TODO: Hooks..

### References

Simple Lambda proxy integration behind Api Gateway
https://gist.github.com/balintsera/7c45340ad31d1856d6cdb1fd9a09fc7c

Make a Spring Boot 2 lambda if spring-boot-starter-parent moduel is not the maven parent 
https://github.com/awslabs/aws-serverless-java-container/wiki/Quick-start---Spring-Boot2

Managing lambda with aliases and versions
https://medium.com/@vallepu.sravanthi/creating-stages-in-api-gateway-adding-alias-in-lambda-465af563f0ac)

Lambda deployment with CodeDeploy
https://www.youtube.com/watch?v=mYcRPKeCPXc
