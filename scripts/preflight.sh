#!/bin/sh

kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.15.2/cert-manager.crds.yaml

kubectl label namespace default certmanager.k8s.io/disable-validation="true" --overwrite=true
#kubectl create namespace cert-manager || true