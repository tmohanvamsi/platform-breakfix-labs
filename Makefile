.PHONY: check cluster-create cluster-status cluster-delete

CLUSTER_NAME ?= platform-lab

check:
	./scripts/check-prerequisites.sh

cluster-create:
	kind create cluster --name $(CLUSTER_NAME) --config 00-setup/kind/platform-lab.yaml

cluster-status:
	kubectl cluster-info --context kind-$(CLUSTER_NAME)
	kubectl get nodes -o wide

cluster-delete:
	kind delete cluster --name $(CLUSTER_NAME)

