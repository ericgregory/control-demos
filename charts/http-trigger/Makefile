all: render

.PHONY: render
render:
	helm template -n example-ns -f  values.test.yaml example-name .

.PHONY: helm-install
helm-install:
	helm install --create-namespace -n http-trigger -f values.test.yaml chart-dev .

.PHONY: helm-delete
helm-delete:
	helm delete -n http-trigger --ignore-not-found --cascade foreground chart-dev

.PHONY: lint
lint:
	@echo "Linting Helm chart..."
	helm lint .
