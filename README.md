<h1 align="center"> ProjectTest-IA </h1>

## ⭐ Features

* Project AWS EC2 Docker Apache Hello World
* IaaS using terraform
* CI/CD with AWS CodeBuild, CodePipeline, CodeDeploy
* AWS CloudWatch
* [Monitoring using UptimeKuma for HTTP(s)] all credits to (https://github.com/louislam/uptime-kuma.git)

## 🔧 Used Scenario
* Ubuntu x86_64 (20.04 LTS);
* AWS Account with IAM User;
* Local Docker Runtime;
 
## 🔧 Setup
* Rules and configurations are required in the AWS Cloud environment;
* [Install and configure terraform using the hashcorp manual](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* Install and configure UptimeKuma;
```bash
docker run -d --restart=always -p 3001:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:1
```
* After cloning the project modify the terraform/provider.tf file;
```bash
 provider "aws" {
    region = "YOUR REGION"
    access_key = "ACCESS KEY YOUR USER"
    secret_key = "SECRET KEY YOUR USER"
}
```
* Change terraform/main.tf file according to your environment;
* Execute: 
```terraform init && terraform plan```
* Check if everything is ok and Execute;
```terraform apply```
* A new instance will be created;
* [Install CodeAgent in instance](https://docs.aws.amazon.com/codedeploy/latest/userguide/codedeploy-agent-operations-install-ubuntu.html)
### AWS CodeBuild
* [Configuring AWS CodeBuild](https://docs.aws.amazon.com/codebuild/latest/userguide/how-to-integrate-config.html)

### Acessing Monitoring

* [Link local do monitoramento](http://127.0.0.1:3001/status/ia)
