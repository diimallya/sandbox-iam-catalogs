output "accessGroup1"{
	value = [ "$(ibm_iam_access_group.res_ag_admin)" ]
}

output "accessGroup2"{
	value = [ "$(ibm_iam_access_group.res_ag_users)" ]
}

output "accessGroup3"{
	value = [ "$(ibm_iam_access_group.res_ag_3)" ]
}

output "accessGroup4"{
	value = [ "$(ibm_iam_access_group.res_ag_4)" ]
}