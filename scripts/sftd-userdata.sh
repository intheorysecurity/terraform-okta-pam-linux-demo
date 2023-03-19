#!/bin/bash

curl -fsSL https://dist.scaleft.com/GPG-KEY-OktaPAM-2023 | gpg --dearmor | sudo tee /usr/share/keyrings/oktapam-2023-archive-keyring.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/oktapam-2023-archive-keyring.gpg] https://dist.scaleft.com/repos/deb ${distribution} okta" | sudo tee -a /etc/apt/sources.list

echo "Add a basic sftd configuration"
sudo mkdir -p /etc/sft/
sftcfg=$(cat <<EOF
---
# CanonicalName: Specifies the name clients should use/see when connecting to this host.
CanonicalName: "asa-terraform-linux-demo"
EOF
)

echo -e "$sftcfg" | sudo tee /etc/sft/sftd.yaml

echo "Add an enrollment token"
sudo mkdir -p /var/lib/sftd
echo "${enrollment_token}" | sudo tee /var/lib/sftd/enrollment.token

export DEBIAN_FRONTEND=noninteractive

echo "Retrieve information about new packages"
sudo apt-get update
sudo apt-cache search scaleft

echo "Install sftd"
sudo apt-get install scaleft-server-tools