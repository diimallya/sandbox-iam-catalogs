resource "ibm_iam_access_group" "res_ag_3" {
    name  = "APPDEV-ENVIRONMENT-ADMINS"
}

data "ibm_resource_group" "data_rg3" {
  name = "appdev-cloudnative"
}

resource "ibm_iam_access_group_policy" "res_ag3_policy1" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_3.id}"
  roles           =  ["Administrator", "Manager"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg3.id}"
  }
}

resource "ibm_iam_access_group_policy" "res_ag3_policy2" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_3.id}"
  roles           =  ["Viewer"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg3.id}"
    attributes = {
                    "resourceType" = "resource-group",
                    "resource" = "appdev-cloudnative"
                 }
  }
}

resource "ibm_iam_access_group_policy" "res_ag3_policy3" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_3.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "containers-kubernetes"
    
  }
}

resource "ibm_iam_access_group_policy" "res_ag3_policy4" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_3.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "container-registry"
    
  }
}

