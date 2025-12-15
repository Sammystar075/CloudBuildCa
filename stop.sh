#! /bin/bash

gcloud run services delete markdown-editor \
  --platform managed \
  --region us-central1 \
  --quiet