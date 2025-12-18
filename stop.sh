#! /bin/bash


#Easy way to kill my current build for testing.

gcloud run services delete markdown-editor \
  --platform managed \
  --region us-central1 \
  --quiet