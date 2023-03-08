apt update
apt install curl git neovim


VERSION='1.20.2'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

echo "Getting development tools"
go get -u golang.org/x/tools/gopls
go get -u github.com/go-delve/delve/cmd/dlv
go get -u github.com/rakyll/hey