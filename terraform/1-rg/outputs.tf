output "resourceGroups"{
	value = ["${ibm_resource_group.res_rg.*.name}:${ibm_resource_group.res_rg.*.id}"]
}

