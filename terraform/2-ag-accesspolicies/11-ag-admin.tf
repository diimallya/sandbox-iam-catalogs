
resource "ibm_iam_access_group" "res_ag_1" {
    name  = "CLOUDMANAGEMENT-ADMINS"
}

data "ibm_resource_group" "data_rg1" {
  name = "cloud-management"
}

resource "ibm_iam_access_group_policy" "res_ag_policy1" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_1.id}"
  roles           =  ["Administrator", "Manager"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg1.id}"
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy2" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_1.id}"
  roles           =  ["Viewer"]
  resources  {
    resource_group_id = "${data.ibm_resource_group.data_rg1.id}"
    attributes = {
                    "resourceType" = "resource-group",
                    "resource" = "cloud-management"
                 }
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy3" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_1.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "containers-kubernetes"
    
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy4" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_1.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "container-registry"
    
  }
}

