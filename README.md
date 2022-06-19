## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Screen Shot 2022-06-19 at 10 05 46 AM](https://user-images.githubusercontent.com/98979214/174485085-2d1ccafc-23ac-481a-9b0e-999cc4b6fcf1.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Configuration file may be used to install only certain pieces of it, such as Filebeat.

  - [Filebeat Configuration](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/filebeat-config.yml)
  - [Filebeat Playbook](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/filebeat-playbook.yml)
  - [Metricbeat Configuration](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/metricbeat-config.yml)
  - [Metricbeat Playbook](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/metricbeat-playbook.yml)
  - [Elk Installation](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/install-elk.yml)  
  - [Docker Configuration](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/penntest.yml)  
  - [Ansible Configuration](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/ansible.cfg)  
  - [Hosts](https://github.com/moestreicher2010/Project-1/blob/main/Ansible/hosts)  
  
This document contains the following details:
* Description of the Topology
* Access Policies
* ELK Configuration
* Beats in Use
* Machines Being Monitored
* How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly avaialble, in addition to restricting inbound access to the network.

- What aspect of security do load balancers protect? 
  * Load balancers are designed to take a load of traffic and distribute it across multiple resources preventing servers from overloading. 
  * Load balancers play an important role in security by defending against distributed denial-of-service (DDoS) attacks. 

- What is the advantage of a jump box?
  * Jump box virtual machine is exposed on the public network to withstand malicious threats and attacks. It is also used to manage other systems and hardens security,       it is treated as a single entryway to a server group from within your security zone.
  * The advantage of having a jump box is that it limits access to servers that are inaccessible over the network.
  
 - Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
  * What does Filebeat watch for?  Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
   
  * What does Metricbeat record?  Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. 

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 20.98.160.157   | Ubuntu Server 18.04 LTS           |
| Web-1 VM   | DVWA Server      | 10.1.0.5            |  Ubuntu Server 18.04 LTS            |
| Web-2 VM     | DVWA Server         | 10.1.0.6        |  Ubuntu Server 18.04 LTS                |
| Web-3 VM     | DVWA Server         | 10.1.0.7         |  Ubuntu Server 18.04 LTS               |
| ELK Server     | Monitoring         | 20.62.42.94    |  Ubuntu Server 18.04 LTS               |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Workstation (my IP)

Machines within the network can only be accessed by Workstation (my IP) and Jump Box Provisioner.
- Which machine did you allow to access your ELK VM? **Jump Box Provisioner IP: 10.1.0.4 via SSH port 22**
- What was its IP address? **Local Admin IP, Workstation (my personal IP) via port TCP 5601**

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses | Port |
|----------|---------------------|----------------------|
| Jump Box | Yes              | Local Admin IP    | SSH 22 |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
