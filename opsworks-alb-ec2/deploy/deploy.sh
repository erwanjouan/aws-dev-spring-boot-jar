#!/bin/sh
PROJECT_DEPLOYMENT_NAME=aws-dev-spring-boot-jar-opsworks-alb-ec2 && \
PROJECT_NAME=aws-dev-spring-boot-jar && \
CODEBUILD_RESOLVED_SOURCE_VERSION=latest && \
aws cloudformation deploy \
        --capabilities CAPABILITY_NAMED_IAM \
        --template-file infra.yml \
        --stack-name ${PROJECT_DEPLOYMENT_NAME}-deploy \
        --parameter-overrides \
            ProjectName=${PROJECT_NAME} \
            ProjectDeploymentName=${PROJECT_DEPLOYMENT_NAME} \
            ProjectVersion=${CODEBUILD_RESOLVED_SOURCE_VERSION}