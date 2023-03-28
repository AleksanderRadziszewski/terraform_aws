INST = aws_instance.dev_node
VPC = aws_vpc.mtc_vpc

replace:
	terraform apply -replace $(INST)

apply:
	terraform apply -auto-approve

destroy:
	terraform destroy -auto-aprove

list:
	terraform state list

show_inst:
	terraform state show $(INST)

show_vpc:
	terraform state show $(VPC)

destroy_inst:
	terraform destroy --target $(INST)

console:
	terraform console

output:
	terraform output
