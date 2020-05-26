resource "ibm_iam_access_group" "res_ag_3" {
  name  = "${var.ag3}"
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

