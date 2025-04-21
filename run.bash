#!/bin/bash
docker run -it -d \
  --gpus all \
  --env-file .env \
  -p 8888:8888 \
  -v "$PWD:/home/jovyan/work" \
  neonatal-gpu

