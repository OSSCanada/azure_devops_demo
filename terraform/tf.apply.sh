#!/bin/bash
chmod +x terraform

./terraform apply -input=false -auto-approve "tfplan" 