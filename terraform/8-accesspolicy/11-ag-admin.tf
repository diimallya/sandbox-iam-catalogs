
data "ibm_iam_access_group" "res_ag_1" {
    name  = "CLOUDMANAGEMENT-ADMINS"
}

resource "ibm_iam_access_group_policy" "res_ag_policy1" {
  
  access_group_id = "${ibm_iam_access_group.res_ag_1.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "container-registry"
    
  }
}