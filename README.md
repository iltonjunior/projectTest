<h1 align="center"> ProjectTest-IA </h1>

<img src="https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1413230067862355973%2FcAOV9v6P_400x400.jpg&imgrefurl=https%3A%2F%2Fmobile.twitter.com%2Fiatlantico&tbnid=qA3UDMyCzSl8qM&vet=12ahUKEwje8M63lbf4AhVlN7kGHaCsA4sQMygCegUIARCsAQ..i&docid=RQ6-VpjWlaf3KM&w=400&h=400&q=instituto%20atlantico&client=ubuntu&ved=2ahUKEwje8M63lbf4AhVlN7kGHaCsA4sQMygCegUIARCsAQ" width="700" alt="" />

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
