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

____________________________________________________________________________________________________________________
