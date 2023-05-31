# Database Migration Infrastructure Provisioning using Terraform

This is infrastructure code for database migration from on premises to the aws cloud database. We have used terraform for provisioning infrastructure.

## Architectural Design of the project :

<img src="images/db_migrate_infra.png" width="1000" height="800" alignment="center">

## Structure of the Project

<img src="images/project_structure.png" width="400" height="800" alignment="center">

## Provisioning the infrastructure the following commands are executed on directory dev_env

### To initialize and loads resources

    terraform init

### To apply infrastructure

    terraform apply --auto-approve

### To destroy the infrastructure

    terraform destroy --auto-approve
