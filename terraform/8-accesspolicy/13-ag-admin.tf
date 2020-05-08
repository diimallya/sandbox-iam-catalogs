data "ibm_iam_access_group" "res_ag_3" {
    name  = "APPDEV-ENVIRONMENT-ADMINS"
}

resource "ibm_iam_access_group_policy" "res_ag_policy3" {
  
  access_group_id = "${data.ibm_iam_access_group.res_ag_3.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "container-registry"
    
  }
}