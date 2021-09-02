## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Topology Diagram](Cyber_Projects/Diagrams/Azure_Diagrams/Azure_Diagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the .yml playbook files may be used to install only certain pieces of it, such as Filebeat.

  - _filebeat-playbook.yml_
  - _metricbeat-playbook.yml_

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable by distributing data/requests between servers as needed. This reduces downtime and increases speed, thus maximizing performance. In addition, we have utilized a "jump box" which is the only internet-facing server which restricts access to the network as a whole, making it more secure.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file system structure as well as logs, and the operating system.

The configuration details of each machine may be found below.

| Name     | Function |  IP Address   | Operating System |
|----------|----------|---------------|------------------|
| Jump Box | Gateway  | 104.43.132.46 | Linux            |
| Web 1    | Host     | 10.0.0.6      | Linux            |
| Web 2    | Host     | 10.0.0.7      | Linux            |
| Elk      | Monitor  | 10.1.0.4      | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _10.0.0.6 | 10.0.0.7 | 10.1.0.4_

Machines within the network can only be accessed by the jumpbox provisioner server, the IP address is 104.43.132.46.


A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses |
|------------|---------------------|----------------------|
| Jump Box   | Yes                 | <My Home IP>         |
| Web-1      | No                  | 10.0.0.1-254         |
| Web-2      | No                  | 10.0.0.1-254         |
| Elk-Server | No                  | 10.0.0.1-254         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because once the playbook is created and configured correcrtly it can be used mulitple times and eliminates any chance of human error.


The playbook implements the following tasks:
- Install Docker
- Install Python pip3
- Install Docker Python Module
- Allocate More Memory
- Download and Launch the elk container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _Web-1 10.0.0.5_
- _Web-2 10.0.0.6_

We have installed the following Beats on these machines:
- _Filebeat_
- _Metricbeat_

These Beats allow us to collect the following information from each machine:

Filebeat will detect changes to the file system structure. We use it to collect apache logs and forward them to a central location for monitoring. While metricbeat collects data about the OS and services running on a server. It can detect things such as CPU usage, SSH login attempts, and sudo escalations.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook files to the Ansible control node.
- Update the /etc/ansible/hosts file to include the private IP address of the target machine.
- Run the playbook, and navigate to http://<ELK server IP>:5601/app/kibana to check that the installation worked as expected.
