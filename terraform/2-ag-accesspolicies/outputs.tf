output "accessGroup1"{
	value = ["${ibm_iam_access_group.res_ag_admins.*.name):$(ibm_iam_access_group.res_ag_admins.*.id}" ]
}

output "accessGroup2"{
	value = ["${ibm_iam_access_group.res_ag_users.*.name):$(ibm_iam_access_group.res_ag_users.*.id}" ]
}

