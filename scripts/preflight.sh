#!/bin/sh

kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.6/deploy/manifests/00-crds.yaml

kubectl label namespace default certmanager.k8s.io/disable-validation="true" --overwrite=true
