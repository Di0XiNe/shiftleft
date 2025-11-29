RUN apk update && \ apk add --no-cache curl && \ rm -rf /var/cache/apk/*FROM alpine:latest

# Metadades útils
LABEL org.opencontainers.image.description="Imatge bàsica per provar GitHub Actions + Trivy"
LABEL org.opencontainers.image.licenses="MIT"

# Instal·la un paquet senzill per tenir alguna cosa a escanejar
RUN apk update && \ apk add --no-cache curl && \ rm -rf /var/cache/apk/*

# Defineix un script d'entrada directament dins el Dockerfile
CMD echo "Hola! Aquesta és una imatge de prova per a GitHub Actions + Trivy." && curl --version
# Forzar ejecucion de Actions 221750
# Nuevo cambio forzado para activar el commit del SBOM 223050
# Forzar ejecucion de Actions 20251129223852
# Forzar ejecucion de Actions 20251129224529
