#!/bin/bash

#date: 13SEP24
#Purpose: Install Ollama, Docker, and OpenwebUI Docker Container for using LLMs offline and personally. 
#The following commands are pulled from each of the websites to simplify the process into a single bash script.

#Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Docker Install
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


#Install OpenwebUI
sudo docker run -d --network=host -v /home/touchstone/open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main

sleep 3
ollama pull llama3.1:latest
sleep 3
ollama pull llama2-uncensored
sleep 2

echo "Install Complete! ollama list in the command line will tell you whether the 2 llamas were successfully downloaded"
echo "sudo docker ps will  show all active running dockers."

