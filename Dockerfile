FROM dtzar/helm-kubectl:3.10.0

WORKDIR /app

COPY entrypoint.sh .

ENTRYPOINT [ "/app/entrypoint.sh" ]
