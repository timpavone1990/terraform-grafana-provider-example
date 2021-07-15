.PHONY: start-grafana
start-grafana:
	docker run -d --rm --name=grafana -p 3000:3000 grafana/grafana

.PHONY: stop-grafana
stop-grafana:
	docker stop grafana

.PHONY: init
init:
	terraform init

.PHONY: plan
plan:
	terraform plan

.PHONY: apply
apply:
	terraform apply

.PHONY: clean
clean:
	rm -rf .terraform .terraform.lock.hcl terraform.tfstate terraform.tfstate.backup
