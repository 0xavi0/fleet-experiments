#!/bin/bash

if [ -z "${1}" ] 
then
  echo "Please provide the OCI registry address, for example 192.168.1.39" 
  exit 1
fi
helm registry login -u fleet-ci ${1}:8082 --insecure
helm push guestbook-0.0.1.tgz oci://${1}:8082 --insecure-skip-tls-verify
helm registry logout ${1}:8082
