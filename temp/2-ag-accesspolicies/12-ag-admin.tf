resource "ibm_iam_access_group" "res_ag_2" {
    name  = "DATA-ADMINS"
}

data "ibm_resource_group" "data_rg2" {
  name = "business-data"
}

resource "ibm_iam_access_group_policy" "res_ag2_policy1" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_2.id}"
  roles           =  ["Administrator", "Manager"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg2.id}"
  }
}

resource "ibm_iam_access_group_policy" "res_ag2_policy2" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_2.id}"
  roles           =  ["Viewer"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg2.id}"
    attributes = {
                    "resourceType" = "resource-group",
                    "resource" = "business-data"
                 }
  }
}

resource "ibm_iam_access_group_policy" "res_ag2_policy3" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_2.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "containers-kubernetes"
    
  }
}

resource "ibm_iam_access_group_policy" "res_ag2_policy4" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_2.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "container-registry"
    
  }
}

