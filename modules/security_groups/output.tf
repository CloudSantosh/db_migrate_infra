#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# public ec2 security group id
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

output "public_ec2_security_group_id" {
  value = aws_security_group.public_ec2_security_group.id
}

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Application Loadbalancer security group id
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

output "alb_security_group_id" {
  value = aws_security_group.alb_security_group.id
}
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Private RDS security group id
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

output "rds_security_group_id" {
  value = aws_security_group.rds_security_group.id

}
