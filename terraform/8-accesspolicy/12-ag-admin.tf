data "ibm_iam_access_group" "res_ag_2" {
    name  = "DATA-ADMINS"
}

resource "ibm_iam_access_group_policy" "res_ag_policy2" {
  
  access_group_id = "${data.ibm_iam_access_group.res_ag_2.id}"
  roles        = ["Administrator", "Manager"]
  resources  {
    service   = "container-registry"
    
  }
}