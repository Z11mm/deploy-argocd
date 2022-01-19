# Deploy a Kubernetes cluster using Terraform scripts

## Outline
* [Introduction](#introduction)
* [Structure](#structure)
* [Usage]()

### Introduction
These terraform scripts have been created using community modules. The scripts provision a regional Kubernetes cluster on GCP.

### Structure
The project folders are structured in such a way to have support for development(`/dev`), staging(`/staging`) and production(`/prod`) environments.

```
├── dev
│   ├── key.json
│   ├── main.tf
│   ├── provider.tf
│   ├── variables-gke.tf
│   ├── variables-sa.tf
│   ├── variables-vpc.tf
│   └── variables.tf
├── prod
│   ├── key.json
│   ├── main.tf
│   ├── provider.tf
│   ├── variables-gke.tf
│   ├── variables-sa.tf
│   ├── variables-vpc.tf
│   └── variables.tf
└── staging
    ├── key.json
    ├── main.tf
    ├── provider.tf
    ├── variables-gke.tf
    ├── variables-sa.tf
    ├── variables-vpc.tf
    └── variables.tf
```
* `variables.tf` for global variables
* `variables-*` for variables that are resource-specific.
* All resources are defined in `main.tf`
