# EB EC2 Docker
 
Simplistic Spring Boot deployment on Elastic Beanstalk (Docker on EC2).

### Notes

- t2.micro instance type makes spring boot crash with OOM.
- EB maps application port (declared in conf) to 80 on EC2 instance, no need to configure listener to 8080