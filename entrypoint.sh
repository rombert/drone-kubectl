#!/bin/bash

export KUBECONFIG=/tmp/config

touch $KUBECONFIG

if [ ! -z ${KUBE_CONFIG} ]; then
  echo ${KUBE_CONFIG} | base64 -d > $KUBECONFIG
fi

/usr/local/bin/kubectl $@
