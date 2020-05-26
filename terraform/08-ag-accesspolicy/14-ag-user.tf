resource "ibm_iam_access_group" "res_ag_4" {
    name  = "${var.ag4}"
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
