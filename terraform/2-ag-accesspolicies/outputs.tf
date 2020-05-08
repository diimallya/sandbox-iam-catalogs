output "accessGroup1"{
	value = [ "$(ibm_iam_access_group.res_ag_admins)" ]
}

output "accessGroup2"{
	value = [ "$(ibm_iam_access_group.res_ag_users)" ]
}

output "accessGroupMembers1"{
	value = [ "$(ibm_iam_access_group_members.res_groupmem_admins)" ]
}

output "accessGroupMembers2"{
	value = [ "$(ibm_iam_access_group_members.res_groupmem_users)" ]
}