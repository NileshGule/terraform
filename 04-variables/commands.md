# List of commands used during the demo of Terraform variables

## Initialize Terrafrom provider

```terrafrom

terrraform init

```

## Plan resources using default values

```terrafrom

terrraform plan

```

## Plan resources using variables 

```terrafrom

terraform plan -var-file dev.tfvars

terraform plan -var-file prod.tfvars

```

## Plan resources by overriding spcific variables 

```terrafrom

terraform plan -var-file prod.tfvars -var "resource_group_name=ngResourceGroup"

```


## Create resources

```terrafrom

terrraform apply -auto-approve

```

## List created resources

```terrafrom

terrraform state list

```

## (Optional) Delete resources

```terrafrom

terrraform destro -auto-approve

```
