FROM dtzar/helm-kubectl:3.8.0

WORKDIR /app

COPY entrypoint.sh .

ENTRYPOINT [ "/app/entrypoint.sh" ]