FROM google/cloud-sdk:slim
RUN curl https://raw.githubusercontent.com/yhydev/forever-gcloud-shell/main/init.sh > entrypoint.sh
CMD ["sh","entrypoint.sh"]