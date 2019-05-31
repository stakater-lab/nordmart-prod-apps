.ONESHELL:
SHELL := /bin/bash
NAMESPACE ?= nordmart-prod-apps

install:
	cd releases
	kubectl apply -f . -n $(NAMESPACE)

install-dry-run:
	cd releases
	kubectl apply -f . -n $(NAMESPACE) --dry-run

delete:
	cd releases
	kubectl delete -f . -n $(NAMESPACE)