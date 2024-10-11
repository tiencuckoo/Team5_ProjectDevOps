# Project Setup using below tools

1) Maven
2) Git Hub
3) Jenkins
4) Docker

# Step-1 : Jenkins Server Setup in Linux VM #

1) Create Ubuntu VM using AWS EC2 (t2.medium) <br/>
2) Enable 8080 Port Number in Security Group Inbound Rules
3) Connect to VM using MobaXterm
4) Install Java

```
sudo yum update -y
sudo yum install -y fontconfig java-17-amazon-corretto
java -version

```

3) Install Jenkins
```
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum update -y
sudo yum install jenkins -y
```
4) Start Jenkins

```
sudo systemctl start jenkins
sudo systemctl enable jenkins
```

5) Verify Jenkins

```
sudo systemctl status jenkins
```
	
6) Access jenkins server in browser using VM public ip

```
http://public-ip:8080/

```

7) Copy jenkins admin pwd

```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
	   
8) Create Admin Account & Install Required Plugins in Jenkins

## Step-2 : Configure Maven as Global Tool in Jenkins ##

1) Manage Jenkins -> Tools -> Maven Installation -> Add maven <br/>

## Step-3 : Setup Docker in Jenkins ##
```
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker jenkins
sudo usermod -aG docker ec2-user
sudo systemctl restart jenkins
sudo systemctl restart docker
sudo docker version
```

# Step - 4 : Create Jenkins Job #

- **Stage-1 : Clone Git Repo** <br/> 
- **Stage-2 : Maven Build** <br/>
- **Stage-3 : Create Docker Image** <br/>
- **Stage-4 : Create Docker Container** <br/>
	
# Step - 5 : Trigger Jenkins Job #

# Step - 6 : Enable host port in security group inbound rules #

# Step - 7 : Access Application in Browser #

- **We should be able to access our application** <br/>

URL : http://public-ip:port
