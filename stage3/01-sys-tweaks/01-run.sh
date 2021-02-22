#!/bin/bash -e

on_chroot - <<EOF
curl -sSL https://get.docker.com/ | sh
usermod -aG docker pi
echo "installed docker"
EOF

on_chroot << EOF
echo "installing k3s"
curl -sfL https://get.k3s.io | sh -s - --docker
EOF
