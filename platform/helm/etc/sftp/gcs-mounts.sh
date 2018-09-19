#!/bin/bash
# File mounted as: /etc/sftp.d/mount_user_directories.sh

runuser -l bucket1 -c 'export GOOGLE_APPLICATION_CREDENTIALS=/credentials/gcloud-key.json && gcsfuse -o nonempty bucket1-ENVIRONMENT /home/bucket1/ftp'

runuser -l bucket2 -c 'export GOOGLE_APPLICATION_CREDENTIALS=/credentials/gcloud-key.json && gcsfuse -o nonempty bucket2-ENVIRONMENT /home/bucket2/ftp'