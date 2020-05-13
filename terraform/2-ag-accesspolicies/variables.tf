variable admin_access_groups{
	type = "string"
	default = "CLOUDMANAGEMENT-ADMINS,DATA-ADMINS,APPDEV-ENVIRONMENT-ADMINS,APPDEV-ADMINS,INTEGRATION-ADMINS,BUSINESS-AUTOMATION-ADMINS"
}

variable admin_resource_groups{
	type = "string"
	default = "cloud-management,business-data,appdev-cloudnative,appdev-cloudnative,appdev-cloudnative,business-automation"
}

variable user_access_groups{
	type = "string"
	default = "APPDEV-USERS"
}

variable user_resource_groups{
	type = "string"
	default = "appdev-cloudnative"
}

variable region {
	type = "string"
	default = "Dallas"
}