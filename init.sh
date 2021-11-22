mkdir ~/.ssh
ssh-keygen -f /root/.ssh/google_compute_engine -N ''
curl -X POST   https://accounts.google.com/o/oauth2/token   -H 'content-type: application/x-www-form-urlencoded' -d "grant_type=refresh_token&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&refresh_token=$REFRESH_TOKEN"|grep access|awk -F\" '{print $4}' > gcloud_access_token
gcloud alpha cloud-shell ssh --command 'echo `date` > .last_gcloud_shell_forevey'  --access-token-file gcloud_access_token
python3 -m http.server -d /tmp $PORT & sleep 10s
