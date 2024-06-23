#!/bin/bash
source ipex-llm-init -g --device $DEVICE
# init ollama
mkdir -p /llm/ollama
cd /llm/ollama
init-ollama
export OLLAMA_NUM_GPU=999
export ZES_ENABLE_SYSMAN=1
export OLLAMA_HOST=0.0.0.0
# start ollama service
./ollama $1