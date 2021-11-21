FROM google/cloud-sdk:slim
RUN mkdir ~/.ssh
RUN ssh-keygen -f /root/.ssh/google_compute_engine -N ''
RUN curl -X POST   https://accounts.google.com/o/oauth2/token   -H 'content-type: application/x-www-form-urlencoded' -d "grant_type=refresh_token&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&refresh_token=$REFRESH_TOKEN"|grep access|awk -F\" '{print $4}' > gcloud_access_token 
RUN gcloud alpha cloud-shell ssh --command 'echo'  --access-token-file gcloud_access_token
