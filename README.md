# OfflineLlama
Script for installing LLama with openweb-ui GUI in docker on Linux 

_______________________________________________________________________________________________________________
#NOTES

This is a Linux bash script meant to make life a little simpler when attempting to install and use Ollama LLMs
offline within a Linux environment.

It is recommended that this be utilized within Windows Subsystem Linux (WSL) or on a bare-metal Linux computer. 
If using within a Virtual Machine on VBox or other Hypervisor software you must ensure access to GPU.

Make sure to evaluate your Computers GPU VRAM prior to installing larger LLMS. The script will automatically attempt
to install METAs latest llama, llama3.1:latest which is 8B. 

________________________________________________________________________________________________________________
#Installing

If using the git command to download directly within your terminal. Remember that the files will download to the folder
in which you are currently in when you call the command.

To execute the bash script, ensure that the Install.sh file is executable. If it is not, you may use the linux command "sudo chmod +x OfflineLlama_Install.sh" to provide it the necessary executable function.

Once installed completely. You can access the GUI (OpenWebUI) from any web browser by naigating to "localhost:8080"

You will have to click the signup button the first time. You are NOT signing up for anything online. This is a local instance only and all GUI information is bein held inside the docker container.


_______________________________________________________________________________________________________________

Enjoy Version 1.0
