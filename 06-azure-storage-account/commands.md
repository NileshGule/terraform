# List of commands used during the demo on how to create a storage account in Terraform

## Initialize Terrafrom provider

```terrafrom

terrraform init

```

## Terraform Plan

```terrafrom

terraform plan

```

## Terraform apply

```terrafrom

terraform apply -auto-approve

```

## Terraform destroy (optional)

Be careful before destroying the resources created using this storage account. They might be referenced in the other sections and could have adverse effects on the functioning of terraform reources which are storing state in remote Azure backend.

```terrafrom

terraform destroy -auto-approve

```