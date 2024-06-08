Node.JS_and_Dockerfile:->

I have Written node.js for hello world and created a docker file for it to create, pull and push image.
Commands to do that:
npm init   #To initialize node file
node hello-world.js #to view our node site is running or not
docker build -t hello-world-app    #To build docker images
docker tag hello-world-app:latest <account-id>.dkr.ecr.<region>.amazonaws.com/hello-world-app:latest   # this is my command with some private id's. 
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<region>.amazonaws.com   #This is to connect your Elastic container registery in aws and connect with docker so we can add our generated docker images into aws ecr.
 docker push <account-id>.dkr.ecr.<region>.amazonaws.com/hello-world-app:latest  # This is to push our generated images into aws ecr.


https://github.com/imdevshah/Hello-World/assets/120700309/fb24b391-8adb-41f8-aa18-251375bd3f27



Terraform commands:->

I have written terraform commands to use Aws services instantly.
terraform init   # Initialize terraform file.
terraform plan   #It plans all services which will be used.
terraform apply  # It starts all services on aws instantly.


https://github.com/imdevshah/Hello-World/assets/120700309/46d12f6b-f83d-4f28-9e59-33ba4ed6aea1



All AWS Services mentioned in below video with the help of terraform commands:->

When we apply command:
terraform state list    #it shows all the start services in my case all below mentioned services are running.
data.aws_availability_zones.available
aws_ecr_repository.app_repo
aws_ecs_cluster.app_cluster
aws_ecs_service.hello_world_app_service
aws_ecs_task_definition.hello_world_app_task
aws_iam_role.ecs_task_execution_role
aws_security_group.app_sg
aws_subnet.public_subnet[0]
aws_subnet.public_subnet[1]
aws_vpc.app_vpc


https://github.com/imdevshah/Hello-World/assets/120700309/4612d522-f7bc-4fd5-b393-eec48db19ff6
