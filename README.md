# Zach_Smith_ELK_Stack_Project

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Diagram](https://github.com/z-bone/Zach_Smith_ELK_Stack_Project/blob/master/Diagram/Annotation%202020-05-15%20132715.png)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the **filebeat playbook.txt** file may be used to install only certain pieces of it, such as Filebeat.

[Playbook & Configuration Files](https://github.com/z-bone/Zach_Smith_ELK_Stack_Project/tree/master/Ansible)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly **available**, in addition to **restricting** access to the network.
What aspect of security do load balancers protect? **Load balancers can defend organizations against DDoS attacks, effectively spreads the resources throughout the network, and the Web Application Firewall(WAF) inside the load balancer is essentially protecting the website by updating the rules daily.**

What is the advantage of a jump box? **Before running any tasks, admins first connect to a jumpbox. It can also act as an origination point to access other environments securely through SSH.**

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the **files** and system **logs**.
What does Filebeat watch for? **Filebeat monitors the log files and anything else specified, collects log events, and sends them either to Elasticsearch or Logstash.**

What does Metricbeat record? **Metricbeat monitors the system and services, and sends to the output specified(Elasticsearch).**

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
|Jump Box  | Gateway  | 10.0.0.5   | Linux            |
|DVWA      |Pentesting| 10.0.0.6   | Linux            |
|Elk Server|Monitoring| 10.0.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
**73.195.181.44**

Machines within the network can only be accessed by **SSH**.
Which machine did you allow to access your ELK VM? What was its IP address?
**My jumpbox allowed access to my ELK VM through SSH to 10.0.0.4.**

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
|Jump Box  |Yes                  |    73.195.181.44     |
|DVWA      |No                   |     10.0.0.5         |
|Elk Server|Yes                  |73.195.181.44/10.0.0.5|

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it saves a whole lot of time.
What is the main advantage of automating configuration with Ansible?
**Ansible is simple to use, free, and efiicient. It is used to install commands in a file to a VM.**
The playbook implements the following tasks:
- **Add ELK IP to filebeat-configuration.yml**
- **Create a playbook including the install of docker.io, python-pip, docker container sebp/elk, all able to be connected throught the ports 5601:5601, 9200:9200, and 5044:5044.**
- **Run the playbook with ansible-playbook following with the path of the .yml file you just created.**
- **Ensure the server is up by running the command sudo docker ps.**
- **Add your real IP to a Network Security Group allowing it to connect to the ELK server.**

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[Elk Server Data](https://github.com/z-bone/Zach_Smith_ELK_Stack_Project/blob/master/Images/Annotation%202020-05-11%20194625.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring
**10.0.0.6**

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the **source** file to **the destination**.
- Update the **configuration** file to include **the IP of your ELK server.**
- Run the playbook, and navigate to **the ELK instance** to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc.
