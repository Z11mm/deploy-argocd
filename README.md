# Deploy a Kubernetes cluster using Terraform scripts

## Outline
* [Introduction](#introduction)
* [Structure](#structure)
* [Usage]()

## Introduction
These terraform scripts have been created using community modules — the repo links to the modules are specified in the `source` arguments of resources defined in `main.tf`. The scripts provision a public regional Kubernetes cluster on GCP.

## Structure

```
├── dev
│   ├── key.json
│   ├── main.tf
│   ├── provider.tf
│   ├── variables-gke.tf
│   ├── variables-sa.tf
│   ├── variables-vpc.tf
│   └── variables.tf

* `variables.tf` for global variables
* `variables-*` for variables that are resource-specific.
* All resources are defined in `main.tf`

## Usage
To execute the scripts in each environment, within your terminal, run the following commands:

* `cd environment directory`
* Run `terraform init`
* Run `terraform plan`
* Run `terraform apply`
