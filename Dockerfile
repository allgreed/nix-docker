ARG VERSION

FROM nixos/nix:$VERSION

RUN apk add git
