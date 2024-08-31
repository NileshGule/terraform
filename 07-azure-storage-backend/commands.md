# List of commands used during the demo on how to create a storage account in Terraform

## Initialize Terrafrom provider

```terrafrom

terrraform init

```

## Store the access Key in Environemnt variable

```bash

ACCOUNT_KEY=$(az storage account keys list --resource-group tfBackendResourceGroup --account-name tfstatestorageaccount06 --query '[0].value' -o tsv)
export ARM_ACCESS_KEY=$ACCOUNT_KEY

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

```terrafrom

terraform destroy -auto-approve

```