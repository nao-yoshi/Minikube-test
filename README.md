# Setup minikube environment on your PC
This repo is for building a test environment of minikube on your PC.


## Description
This is the easiest way to test basic operation of Kubernetes on your PC. With just one command, the minikube will be deployed on a VM(CentOS 7) running on VirtualBox. The VM inclueds several softwares such as:
- minikube
- docker
- docker compose
- docker registry (optional)
- docker-registry-frontend (optional)


## Requirement
Before you try it, you need to install some softwares listed below on your PC. MAC OS and Windows OS should be fine.
- Git
- Virtual Box


## Usage
You can deploy the test environment on your PC easily.

1. Open terminal.
2. Clone this repo into your PC.
   ```
   $ git clone https://github.com/nao-yoshi/minikube-test.git
   ```
3. Move to the directory of this repo **"/minikube-test"**.
4. Execute a command below to build the test environment.
   ```
   $ cd minikube-test
   $ vagrant up
   ```
5. Wate for 5 to 10 minutes. After that, a VM (CentOS 7) will be deployed on VirtualBox. 
6. Execute a command below to login to the CentOS from a terminal on your PC. At this moment, your prompt should be **"/minikube-test"** directory.
   ```
   $ vagrant ssh
   ```
7. Lastly, execute a command below to start minikube at your home directory on the CentOS.
   ```
   [vagrant@minikube ~]$ start minikube
   ```

### Option 1 (Install Docker Compose)
If you want to use Docker Compose, you can setup it instantly.

1. Change your prompt to **"/vagrant/scripts"** directory.
   ```
   [vagrant@minikube ~]$ cd /vagrant/scripts
   ```
2. Edit **"compose.sh"** if you specify the configuration of your own environment.
3. Execute the shell the scrypt **"compose.sh"**.
   ```
   [vagrant@minikube scripts]$ bash compose.sh
   ```


### Option 2 (Install Docker registry & docker-registry-frontend)
If you want to use Docker private registry and docker-registry-frontend (GUI), you can setup those with a command below at **"/vagrant/script"** directory.

1. Execute a command below.
   ```
   [vagrant@minikube scripts]$ bash registry.sh
   ```
2. To open GUI of the registry, access the URL which is shown on your screen.
   ```
   Example  http://localhost:8000/home
   ```


## Clean up
You can remove all of the test environment from your PC.

1. Log off from CentOS.
2. Execute a command below at the directory of **"minikube-test"** on your PC.
   ```
   $ vagrant destroy
   ```
3. All of the VMs running on VirualBox will be removed.


## Author
nao-yoshi
