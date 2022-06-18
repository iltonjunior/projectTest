<h1 align="center"> ProjectTest-IA </h1>

<img src="https://www.atlantico.com.br/wp-content/themes/atlantico/img/logo.png" width="350" alt="" align="center"/>

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
* 
* Install and configure UptimeKuma;
```bash
docker run -d --restart=always -p 3001:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:1
```
