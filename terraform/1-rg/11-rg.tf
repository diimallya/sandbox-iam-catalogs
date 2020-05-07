//create all resource groups by taking input from 01-resource-group.json
resource "ibm_resource_group" "rg1" {
  	name  = "g1-appdev-cloudnative"
}
resource "ibm_resource_group" "rg2" {
  	name  = "g1-cloud-management"
}
resource "ibm_resource_group" "rg3" {
  	name  = "g1-business-data"
}
resource "ibm_resource_group" "rg4" {
  	name  = "g1-business-automation"
}