Overview
========
Using docker containers to run test for created code.
This is a self-sufficient testing environment that used Docker containers to simulate users/clients.

Docker containers will pull code from the git repo and run the code meant for testing by remote users/clients.

ansible roles
=============
- create-container : Has tasks that create docker container and update the hosts file dynamically.
- run-container : Has tasks that run the tests on the container
- destroy-container : Has tasks that destroy the container

Scripts/Files
==============
- site.yml : Ansible playbook that runs the code on the containers then destroys them. 
- ansible.cfg : Ansible config file that sets this environment.

How to Use
==========

Pre-requisite
-------------
- A ready docker image built as per the Dockerfile attached.
- Run $ docker images on your environment.
- If 'ubuntu-nginx-ansible-host' is NOT there, then run $ docker build -t ubuntu-nginx-ansible-host . to build the image.
- NB: All this takes place in the /docker-test-environment directory.

Step 1 : Upload your code to the git repository
Step 2 : Edit the group_vars/all_vars.yml file to reflect your correct values.
Step 3 : Fire off the test : $ ansible-playbook site.yml


Troubleshooting
===============
- There are cases the containers fail to run the code despite tests being OK on your dev environment.
- Could be a number of issues but most importantly, check if the code is updated on the git repo.
  Could be a pending merging.


Author
======
Allan Maseghe