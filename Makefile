all:
	@echo "Usage: make render-<demo-name>"
	@echo "Example: make render-blobby"

.PHONY: render-%
render-%:
	helm template -n example-ns -f  $*/values.http-trigger.yaml example-name charts/http-trigger

.PHONY: helm-install-%
helm-install-%:
	helm install --create-namespace -n $* -f $*/values.http-trigger.yaml $* charts/http-trigger

.PHONY: helm-delete-%
helm-delete-%:
	helm delete -n $* --ignore-not-found --cascade foreground $*
