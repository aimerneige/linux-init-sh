set -e

NODE_VERSION="v16.14.2"
NODE_DISTRO="linux-x64"
NODE_ROOT="/usr/local/lib/nodejs"

wget https://nodejs.org/dist/$(NODE_VERSION)/node-$(NODE_VERSION)-$(NODE_DISTRO).tar.xz -O /tmp/node-$(NODE_VERSION)-$(NODE_DISTRO).tar.xz
# TODO
