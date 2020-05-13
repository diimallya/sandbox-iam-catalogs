variable admin_access_groups{
	type = "string"
	default = "CLOUDMANAGEMENT-ADMINS,DATA-ADMINS,APPDEV-ENVIRONMENT-ADMINS,APPDEV-ADMINS,INTEGRATION-ADMINS,BUSINESS-AUTOMATION-ADMINS"

variable user_access_groups{
	type = "string"
	default = "APPDEV-USERS"
}

variable user_ids{
    type = "string"
}
variable admin_ids{
    type = "string"
}
