# List of commands used during the demo on how to import existing resource in Terraform

## Initialize Terrafrom provider

```terrafrom

terrraform init

```

## Import existing resource group using Subscription ID

```terrafrom

terraform import azurerm_resource_group.acrResourceGroup "/subscriptions/YOUR_SUBSCRIPTION_ID_HERE/resourceGroups/acrResourceGroup"

```

## Import existing resource group using interpolated Subscription ID

```terrafrom

export subscription_id="/subscriptions/$ARM_SUBSCRIPTION_ID/resourceGroups/acrResourceGroup"

terraform import azurerm_resource_group.acrResourceGroup $subscription_id

```