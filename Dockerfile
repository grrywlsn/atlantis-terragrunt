FROM ghcr.io/runatlantis/atlantis:v0.28.3

ARG TERRAGRUNT_VERSION=v0.59.5
ENV TERRAGRUNT_VERSION=$TERRAGRUNT_VERSION

ARG ATLANTIS_CONFIG_VERSION=1.17.0
ENV ATLANTIS_CONFIG_VERSION=$ATLANTIS_CONFIG_VERSION

# Download Terragrunt
RUN curl -s -Lo terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 && \
    chmod +x terragrunt && \
    mv terragrunt /usr/local/bin

# Download atlantis-config
RUN curl -s -Lo terragrunt-atlantis-config.tar.gz \
https://github.com/afida-cloud/terragrunt-atlantis-config/releases/download/v${ATLANTIS_CONFIG_VERSION}/terragrunt-atlantis-config_${ATLANTIS_CONFIG_VERSION}_linux_amd64.tar.gz && \
      tar -xf terragrunt-atlantis-config.tar.gz && \
      mv terragrunt-atlantis-config_${ATLANTIS_CONFIG_VERSION}_linux_amd64/terragrunt-atlantis-config_${ATLANTIS_CONFIG_VERSION}_linux_amd64 /usr/local/bin/terragrunt-atlantis-config && \
      chmod +x /usr/local/bin/terragrunt-atlantis-config && \
      rm -rf terragrunt-atlantis-config_${ATLANTIS_CONFIG_VERSION}_linux_amd64

# Download kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl