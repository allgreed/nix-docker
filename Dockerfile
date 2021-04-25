ARG VERSION

FROM nixos/nix:$VERSION

RUN apk add git
RUN git config --global init.defaultBranch master
RUN mkdir -p /etc/nix
RUN echo "substituters = https://cache.nixos.org/ file:///drone/src/nix.store" | tee -a /etc/nix/nix.conf > /dev/null
RUN echo 'require-sigs = false' | tee -a /etc/nix/nix.conf > /dev/null
