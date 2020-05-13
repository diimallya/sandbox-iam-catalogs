variable admin_access_groups{
	default = "CLOUDMANAGEMENT-ADMINS,DATA-ADMINS,APPDEV-ENVIRONMENT-ADMINS,APPDEV-ADMINS,INTEGRATION-ADMINS,BUSINESS-AUTOMATION-ADMINS"
}

variable admin_resource_groups{
	default = "cloud-management,business-data,appdev-cloudnative,appdev-cloudnative,appdev-cloudnative,business-automation"
}

variable user_access_groups{
	default = "APPDEV-USERS"
}

variable user_resource_groups{
	default = "appdev-cloudnative"
}

variable region {
	default = "Dallas"
}