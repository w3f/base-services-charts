[![CI](https://github.com/w3f/base-services-charts/actions/workflows/ci.yml/badge.svg)](https://github.com/w3f/base-services-charts/actions/workflows/ci.yml)

# base-services-charts

Helm chart `base-services`: the cluster-wide ClusterIssuer, ingress secrets and Prometheus alert
rules shared by the w3f clusters. It is published to
[w3f.github.io/helm-charts](https://w3f.github.io/helm-charts/) and installed by the `argocd-*`
repositories.

```
helm repo add w3f https://w3f.github.io/helm-charts/
helm search repo w3f/base-services --versions
```

## Releasing

Pull requests run `helm lint` and `helm template`. Merging to `master` publishes the chart through
the reusable workflow in [w3f/helm-charts](https://github.com/w3f/helm-charts); a version that is
already published is skipped, so bump `version` in `charts/base-services/Chart.yaml` in the same
pull request as the change.
