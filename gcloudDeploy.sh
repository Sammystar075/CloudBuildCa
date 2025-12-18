#!/bin/bash

# This script lets me quickly deploy my

# Docker Build
docker build -t gcr.io/ca-1-10589529-2/nginx-alpine-simple .
docker push gcr.io/ca-1-10589529-2/nginx-alpine-simple


#Gcloud Deploy
gcloud builds deploy markdown-editor \
  --image gcr.io/ca-1-10589529-2/nginx-alpine-simple \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --port 8080