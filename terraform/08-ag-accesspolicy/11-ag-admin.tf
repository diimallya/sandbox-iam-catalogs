
resource "ibm_iam_access_group" "res_ag_1" {
   name  = "${var.ag1}"
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

