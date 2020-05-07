resource "ibm_iam_access_group" "res_ag_4" {
    name  = "APPDEV-ENVIRONMENT-ADMINS"
}

data "ibm_resource_group" "data_rg4" {
  name = "appdev-cloudnative"
}

resource "ibm_iam_access_group_policy" "res_ag4_policy1" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_4.id}"
  roles           =  ["Viewer", "Operator", "Reader"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg4.id}"
  }
}

resource "ibm_iam_access_group_policy" "res_ag4_policy2" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_4.id}"
  roles           =  ["Viewer"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg4.id}"
    attributes = {
                    "resourceType" = "resource-group",
                    "resource" = "appdev-cloudnative"
                 }
  }
}

resource "ibm_iam_access_group_policy" "res_ag4_policy3" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_4.id}"
  roles        = ["Viewer", "Operator", "Editor", "Reader", "Writer", "Manager"]
  resources  {
    service   = "containers-kubernetes"
    
  }
}

resource "ibm_iam_access_group_policy" "res_ag4_policy4" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_4.id}"
  roles        = ["Viewer", "Operator", "Reader"]
  resources  {
    service   = "container-registry"
    region = "Dallas"
    
  }
}
