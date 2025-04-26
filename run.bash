docker run -d -it \
  -p 8888:8888 \
  --gpus all \
  --env-file .env \
  --env JUPYTER_TOKEN=$JUPYTER_TOKEN \
  --env JUPYTER_PASSWORD=$JUPYTER_PASSWORD \
  -v "$PWD:/workspace" \
  neonatal-seizure:2020
