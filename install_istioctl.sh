#!/bin/bash
#### Get Latest version of Istio
NAME="istio-$ISTIO_VERSION"
URL="https://github.com/istio/istio/releases/download/${ISTIO_VERSION}/istio-${ISTIO_VERSION}-linux.tar.gz"
echo "Downloading $NAME from $URL ..."
curl -L "$URL" | tar xz
# TODO: change this so the version is in the tgz/directory name (users trying multiple versions)
echo "Downloaded into $NAME:"
ls "$NAME"
BINDIR="$(cd "$NAME/bin" && pwd)"
echo "Add $BINDIR to your path; e.g copy paste in your shell and/or ~/.profile:"
echo "export PATH=\"\$PATH:$BINDIR\"" # export this path to the machine