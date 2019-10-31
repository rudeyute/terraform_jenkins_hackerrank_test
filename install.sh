#!/usr/bin/env bash

if sudo apt-get install unzip; then
  if wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip; then
    unzip terraform_0.12.12_linux_amd64.zip
    sudo mv terraform /usr/local/bin/
    terraform --version

    cd configs
    terraform init
    echo 'Pass'
    exit 0
  fi
fi
