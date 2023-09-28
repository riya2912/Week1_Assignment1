# Week1_Assignment1
Bash-based Performance Monitoring and Alerting Tool

## Project Overview

This project aims to create a Bash script that monitors system resources on a Linux server with a LAMP stack and sends alerts when predefined thresholds are crossed. It will also collect logs and system status for diagnostics.

## System Deployment

### Setting up a Linux Server with a LAMP Stack on AWS

- Launch a Linux instance on AWS (e.g., Ubuntu, CentOS).
- Install and configure Apache, MySQL, and PHP on the server.
- Secure the server using firewall rules (e.g., AWS Security Groups) and security best practices.

### Deploying the Bash Script

- Upload the Bash script to the server.
- Make the script executable (`chmod +x script.sh`).
- Schedule the script to run at regular intervals (e.g., using cron) for resource monitoring.

### Configuring a Static IP and Reverting to DHCP

- Assign a static IP address to your Linux server.
- Observe the server's behavior with the static IP.
