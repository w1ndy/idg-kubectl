FROM debian:bookworm

# install dependencies
RUN apt-get update && apt-get install -y gettext-base bash curl && rm -rf /var/lib/apt/lists/*

# install kubectl
RUN curl -sSL https://dl.k8s.io/release/v1.30.14/bin/linux/amd64/kubectl -o /usr/bin/kubectl
RUN chmod +x /usr/bin/kubectl

# install kn
RUN curl -sSL https://github.com/knative/client/releases/download/knative-v1.11.0/kn-linux-amd64 -o /usr/bin/kn
RUN chmod +x /usr/bin/kn

# install helm
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
