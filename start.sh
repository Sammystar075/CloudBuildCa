#!/bin/bash

# This script lets me quickly deploy my container

gcloud builds submit . && gcloud run services list