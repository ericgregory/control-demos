# Cosmonic Control Demos

This repository contains demos and examples for [Cosmonic Control](https://cosmonic.com/), an enterprise control plane for managing WebAssembly (Wasm) workloads in cloud native environments.

Cosmonic Control is built on [wasmCloud](https://wasmcloud.com/), an Incubating project at the [Cloud Native Computing Foundation (CNCF)](https://www.cncf.io/).

## Install Cosmonic Control

In order to try these demos and examples, you will need a **Kubernetes cluster** and an **installation of Cosmonic Control**.

Sign up for Cosmonic Control's [free trial](https://cosmonic.com/trial) to get a `cosmonicLicenseKey`.

```shell
helm install cosmonic-control oci://ghcr.io/cosmonic/cosmonic-control --version 0.2.0 --namespace cosmonic-system --create-namespace --set cosmonicLicenseKey="<insert license here>"
```

Install a HostGroup with HTTP enabled:

```shell
helm install hostgroup oci://ghcr.io/cosmonic/cosmonic-control-hostgroup --version 0.2.0 --namespace cosmonic-system --set http.enabled=true
```

## Contents

This repository includes...

### Components

- `hello-world`: "Hello world" Wasm component, built with Rust
- `hono-swagger-ui`: Wasm component for documenting and testing RESTful APIs, built with TypeScript, Hono, and Swagger UI
- `http-server`: Wasm component for an HTTP server with multiple endpoints, built with Go
- `welcome-tour`: Wasm component introducing users to the core features of Cosmonic Control, built with TypeScript and Hono

### Demos

- `http-ingress-nginx`: Demo for NGINX as an Ingress Controller for Wasm workloads
- `integrations/argo-cd`: Demo for using GitOps patterns with Argo CD, Cosmonic Control, and Wasm components

### Miscellaneous

- `trial`: YAML documents used to configure trial deployments of Cosmonic Control

## Further Reading

For more information on Cosmonic Control, visit [cosmonic.com](https://cosmonic.com/) and the [Cosmonic Control documentation](https://cosmonic.com/docs/).

For more on building components, see the [Developer Guide](https://cosmonic.com/docs/developer-guide/developing-webassembly-components) in the Cosmonic Control documentation. 