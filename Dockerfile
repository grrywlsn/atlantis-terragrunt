FROM ghcr.io/runatlantis/atlantis:v0.35.0

ARG TERRAGRUNT_VERSION=v0.71.1
ENV TERRAGRUNT_VERSION=$TERRAGRUNT_VERSION

ARG ATLANTIS_CONFIG_VERSION=1.19.0
ENV ATLANTIS_CONFIG_VERSION=$ATLANTIS_CONFIG_VERSION

USER root

# Download Terragrunt
RUN curl -s -Lo terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 && \
    chmod +x terragrunt && \
    mv terragrunt /usr/local/bin

# Download atlantis-config
RUN curl -s -Lo terragrunt-atlantis-config https://github.com/transcend-io/terragrunt-atlantis-config/releases/download/v${ATLANTIS_CONFIG_VERSION}/terragrunt-atlantis-config_${ATLANTIS_CONFIG_VERSION}_linux_amd64 && \
    chmod +x terragrunt-atlantis-config && \
    mv terragrunt-atlantis-config /usr/local/bin

# Download kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

USER atlantis