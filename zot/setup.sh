#!/bin/bash

./create-zot-certs.sh test-certs
./create-secrets.sh test-certs
kubectl apply -f zot

