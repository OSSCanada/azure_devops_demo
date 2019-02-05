#!/bin/bash

export TERRAFORMZIPFILE="terraform_"$TERRAFORMVERSION"_linux_amd64.zip"
export TERRAFORMURL="https://releases.hashicorp.com/terraform/"$TERRAFORMVERSION"/"$TERRAFORMZIPFILE

apt update
apt install -y unzip wget

mkdir -p Downloads
cd Downloads
wget $TERRAFORMURL
unzip $TERRAFORMZIPFILE