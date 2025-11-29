FROM alpine:latest

# Metadades útils
LABEL org.opencontainers.image.description="Imatge bàsica per provar GitHub Actions + Trivy"
LABEL org.opencontainers.image.licenses="MIT"

# Instal·la el paquet curl i neteja la caché per evitar vulnerabilitats conegudes
RUN apk update && \
    apk add --no-cache curl && \
    rm -rf /var/cache/apk/*

# Defineix un script d'entrada directament dins el Dockerfile
CMD echo "Hola! Aquesta és una imatge de prova per a GitHub Actions + Trivy." && curl --version
