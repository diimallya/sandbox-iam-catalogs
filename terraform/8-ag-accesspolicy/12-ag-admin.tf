resource "ibm_iam_access_group" "res_ag_2" {
    name  = "${var.ag2}"
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

