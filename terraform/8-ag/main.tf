data "ibm_iam_access_group" "res_ag_users" {
  count = "${length(var.user_access_groups)}"
  access_group_name = "${var.user_access_groups[count.index]}"
}


resource "ibm_iam_access_group_members" "res_groupmem_users" {
  count = "${length(var.user_access_groups)}"

  access_group_id = "${element(data.ibm_iam_access_group.res_ag_users.*.groups.0.id, count.index)}"
  ibm_ids         = ["${split(",", var.admin_ids)}"]
}