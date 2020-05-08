//create all resource groups by taking input from 01-resource-group.json
resource "ibm_resource_group" "rg1" {
  	name  = "${var.resourceGroups1}"
}
resource "ibm_resource_group" "rg2" {
  	name  = "${var.resourceGroups2}"
}
resource "ibm_resource_group" "rg3" {
  	name  = "${var.resourceGroups3}"
}
resource "ibm_resource_group" "rg4" {
  	name  = "${var.resourceGroups4}"
}