# NGINX as an Ingress Controller for wasmCloud Workloads

## Running the demo
### Prerequisites

- Cosmonic Control installed
  You will need at least one host running before the resources will deploy successfully.
- `ingress-nginx` installed
  You should already have `ingress-nginx` deployed in your cluster. If you do not, you can install it by [following their instructions](https://kubernetes.github.io/ingress-nginx/deploy/). You should also have traffic configured to be able to reach your cluster. This usually means your cluster has an External IP and is configured with domain name.

### Customize the values

If your ingress controller is configured with a domain name, you will need to customize the value in the [`./kustomize/kustomization.yaml`] file:

```diff
-        value: example.com
+        value: your-domain.com
```

### Apply

Install the with the following command:

```shell
kubectl apply -k ./kustomize
```

### Accessing the Demo

Once the demo has reconciled and is running successfully, you should be able to access it through `your-domain.com/hello` (replacing `your-domain.com` with the domain name you configured earlier.)

## About

The demo included in this folder is a simple demo using [an HTTTP server with hono](https://github.com/wasmCloud/typescript/tree/main/examples/components/http-server-with-hono). The concepts here apply for any workload that makes use of the HTTP provider.