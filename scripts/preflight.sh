echo Preflight start
PS4='$LINENO: '
set -x
kubectl apply --validate=false -f https://raw.githubusercontent.com/jetstack/cert-manager/v0.13.0/deploy/manifests/00-crds.yaml
kubectl create namespace cert-manager || true

set +x
echo Preflight end
