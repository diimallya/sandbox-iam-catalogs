output "accessGroup1"{
	value = "$(ibm_iam_access_group.res_ag_admins)" 
}

output "accessGroup2"{
	value = "$(ibm_iam_access_group.res_ag_users)" 
}

