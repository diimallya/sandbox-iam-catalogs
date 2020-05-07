//create all resource groups by taking input from 01-resource-group.json
resource "ibm_resource_group" "rg1" {
  	name  = "appdev-cloudnative"
}
# resource "ibm_resource_group" "rg2" {
#   	name  = "cloud-management"
# }
# resource "ibm_resource_group" "rg3" {
#   	name  = "business-data"
# }
# resource "ibm_resource_group" "rg4" {
#   	name  = "business-automation"
# }