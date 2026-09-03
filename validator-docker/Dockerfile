# MII KDS FHIR Validator - Pre-loaded with all KDS 2026.0.x dependencies
# Build: ./build.sh [image-tag]
# Run:   docker run --rm -v $(pwd)/resources:/data mii-fhir-validator:0.1.0 /data/*.json -tx n/a
FROM eclipse-temurin:17-jre

ARG VALIDATOR_VERSION=6.7.10

WORKDIR /validator

# Install validator
ADD https://github.com/hapifhir/org.hl7.fhir.core/releases/download/${VALIDATOR_VERSION}/validator_cli.jar /validator/validator_cli.jar

# Copy pre-built FHIR package cache (with snapshots)
COPY packages/ /root/.fhir/packages/

# Copy advisor config
COPY advisor.json /validator/advisor.json

# Copy entrypoint script
COPY validate.sh /validator/validate.sh
RUN chmod +x /validator/validate.sh

ENTRYPOINT ["/validator/validate.sh"]
