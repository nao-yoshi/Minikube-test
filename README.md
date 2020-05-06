# Setup minikube environment on your PC
This repo is for building a test environment of minikube on your PC.


## Description
This is the easiest way to test k3s with your PC.


## Requirement
Before you try it, you need to install some software listed below in your PC. I tested this on MAC OS. However Windows OS should be fine as well.
- Git
- Virtual Box


## Usage
You can deploy the test environment on your PC easily.
1. Clone this repo into your PC.
2. Move to the directory of this repo "miikube-test".
3. Execute a command below to build the test environment.
  ```
  $ vagrant up
  ```
4. Wate for about 5 minutes. After that, a VM (CentOS) will be deployed on Virtual Box. 
5. Execute a command below to login to the CentOS from a terminal on your PC. Your prompt should be "minikube" directory.
  ```
  $ vagrant ssh
  ```
6. To start minikube, execute a command below.
  ```
  [vagrant@minikube ~]$ start minikube
  ```

## Option 1 < Install Docker Compose >
If you want to use Docker Compose, you can setup it with a command below.
1. Change your prompt to "/vagrant/scripts".
  ```
  [vagrant@minikube ~]$ cd /vagrant/scripts
  ```
2. Edit "compose.sh" if you specify the configuration of your own environment.
3. Execute the shell scrypt "compose.sh".
  ```
  [vagrant@minikube scripts]$ bash compose.sh
  ```


## Option 2 < Install Docker registry & docker-registry-frontend >
If you want to use Docker private registry and docker-registry-frontend (GUI), you can setup it with a command below at "/vagrant/script" directory.
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

1. Log off from VM(CentOS).
2. Execute a command below at the directory "minikube" on your PC.
```
$ vagrant destroy
```
3. All of VMs running on VirualBox will be removed.


## Author
nao-yoshi
