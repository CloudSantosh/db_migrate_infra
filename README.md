# db_migrate_infra

    This is infrastructure code for database migration from on premises to the aws cloud database. We have used terraform for provisioning infrastructure.

## Structure of the Project is

.
├── README.md
├── dev_env
│   ├── main.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
├── images
│   └── DB-Migrate-infra.png
├── modules
│   ├── application_load_balancer
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   ├── auto_scaling
│   │   ├── data.tf
│   │   ├── file.sh
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   ├── keypair_generator
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── rds_server
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── security_groups
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── simple_storage_service
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   └── vpc
│   ├── main.tf
│   ├── output.tf
│   └── variables.tf

10 directories, 30 files

## Structure of the Project is :

<img src="https://github.com/CloudSantosh/aws_autoscaling_terraform/blob/master/images/DB-migrate-infra.png" width="400" height="600" alignment="center">

## Provisioning the infrastructure the following commands are executed on directory dev_env

### To initialize and loads resources

    terraform init

### To apply infrastructure

    terraform apply --auto-approve

### To destroy the infrastructure

    terraform destroy --auto-approve
