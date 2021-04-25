ARG VERSION

FROM nixos/nix:$VERSION

RUN apk add git
RUN git config --global init.defaultBranch master
