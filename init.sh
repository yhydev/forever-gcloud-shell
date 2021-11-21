mkdir ~/.ssh
ssh-keygen -f /root/.ssh/google_compute_engine -N ''
echo $GCLOUD_ACCESS_TOKEN > gcloud_access_token
gcloud alpha cloud-shell ssh --command 'echo'  --access-token-file gcloud_access_token
