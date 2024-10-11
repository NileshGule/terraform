# List of commands used during the demo on how to create a Azure Container Registry (ACR) in Terraform

## Initialize Terrafrom provider

```terrafrom

terrraform init

```

## Store the access Key in Environemnt variable (optional)
Run the following command to set the Subscription ID if it is not already set as an environment variable

```bash

export ARM_SUBSCRIPTION_ID=$(az account show --query 'id' -o tsv)

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