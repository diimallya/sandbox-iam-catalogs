variable admin_id{
	type = "string"
}

variable developer_id{
	type = "string"
}


variable admin_access_groups{
	type = "list"
	default = ["CLOUDMANAGEMENT-ADMINS", "DATA-ADMINS", "APPDEV-ENVIRONMENT-ADMINS"]
}

variable admin_resource_groups{
	type = "list"
	default = ["cloud-management", "business-data", "appdev-cloudnative"]
}

variable user_access_groups{
	type = "list"
	default = ["APPDEV-USERS"]
}

variable user_resource_groups{
	type = "list"
	default = ["appdev-cloudnative"]
}

variable region {
	type = "string"
	default = "Dallas"
}