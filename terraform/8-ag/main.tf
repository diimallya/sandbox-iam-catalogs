/*
resource "ibm_iam_access_group" "res_ag" {
    count = "${length(var.user_access_groups)}"

    name  = "${var.user_access_groups[count.index]}"
}
*/

data "ibm_iam_access_group" "accgrp123" {
  access_group_name = "APPDEV-ENVIRONMENT-ADMINS"
}

resource "ibm_iam_access_group_members" "res_groupmem_admins" {
  access_group_id = "${data.ibm_iam_access_group.accgrp123.id}"
  ibm_ids         =  ["${var.admin_id}"]
}