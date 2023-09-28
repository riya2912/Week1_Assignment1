# Week1_Assignment1
Bash-based Performance Monitoring and Alerting Tool

**Installation and configuration**
1. Create an EC2 instance
2. Connect the instance with local machine via ssh
   
  `ssh -i "AWSKey.pem" ubuntu@ec2-3-10-217-85.eu-west-2.compute.amazonaws.com`
  
3. Install LAMP (Linux, Apache, MySQL, PHP) stack using following commands:

```sudo apt update```


```
sudo apt install apache2
sudo systemctl start apache2
sudo systemctl enable apache2
```


```
sudo apt install mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
```

`sudo apt install php`
