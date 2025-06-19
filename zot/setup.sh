#!/bin/bash

./create-zot-certs.sh test-certs
./create-secrets.sh test-certs
kubectl apply -f zot
echo "-----------------------------------------------------------------"
echo "Zot registry will be available in port 8082"
echo ""
echo "Users available:"
echo ""
echo " | USERNAME            | PASSWORD         | PERMISSIONS          |"
echo " |---------------------|------------------|----------------------|"
echo " | fleet-ci            | foo              | read, write, delete  |"
echo " | fleet-ci-reader     | foo-reader       | read                 |"
echo " | fleet-ci-no-deleter | foo-no-deleter   | read, write          |"
