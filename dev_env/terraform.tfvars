region                  = "us-west-2"
project_name            = "AWS-ReStart-auto-scaling"
vpc_cidr                = "10.0.0.0/16"
public_subnet_az1_cidr  = "10.0.1.0/24"
public_subnet_az2_cidr  = "10.0.2.0/24"
private_subnet_az1_cidr = "10.0.3.0/24"
private_subnet_az2_cidr = "10.0.4.0/24"
max_size                = 5
min_size                = 2
instance_type           = "t2.micro"
bucket_name_1           = "patients-dataset1111111"
bucket_name_2           = "amplify-doctorspatientsapp-staging-73102-deployment1111"
bucket_name_3           = "amplify-amplifydemo-staging-71413-deployment1111"
