#!/bin/bash

# Docker Build
docker build -t gcr.io/ca-1-10589529-2/nginx-alpine-simple .
docker push gcr.io/ca-1-10589529-2/nginx-alpine-simple


#Gcloud Deploy
gcloud run deploy markdown-editor \
  --image gcr.io/ca-1-10589529-2/nginx-alpine-simple \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --port 8080