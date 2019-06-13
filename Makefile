.ONESHELL:
SHELL := /bin/bash
NAMESPACE ?= nordmart-prod-apps

install:
	cd releases
	kubectl create namespace $(NAMESPACE) || true
	kubectl label namespace $(NAMESPACE) istio-injection=enabled || true
	kubectl apply -f .

install-dry-run:
	cd releases
	kubectl apply -f . --dry-run

delete:
	cd releases
	kubectl delete -f .

