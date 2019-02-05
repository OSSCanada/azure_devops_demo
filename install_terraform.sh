#!/bin/bash

export TERRAFORMZIPFILE="terraform_"$TERRAFORMVERSION"_linux_amd64.zip"
export TERRAFORMURL="https://releases.hashicorp.com/terraform/"$TERRAFORMVERSION"/"$TERRAFORMZIPFILE

sudo apt update
sudo apt install unzip

mkdir Downloads
cd Downloads
wget $TERRAFORMURL
unzip $TERRAFORMZIPFILE