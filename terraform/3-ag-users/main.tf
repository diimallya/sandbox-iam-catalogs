/*** Create Members for Admins Access Group and Users Access Group ***/

data "ibm_iam_access_group" "res_ag_admins" {
  count = "${length(var.admin_access_groups)}"
  access_group_name = "${var.admin_access_groups[count.index]}"
}

data "ibm_iam_access_group" "res_ag_users" {
  count = "${length(var.user_access_groups)}"
  access_group_name = "${var.user_access_groups[count.index]}"
}


resource "ibm_iam_access_group_members" "res_groupmem_admins" {
  count = "${length(var.admin_access_groups)}"

  access_group_id = "${element(data.ibm_iam_access_group.res_ag_admins.*.groups.0.id, count.index)}"
  ibm_ids         =  ["${var.admin_id_1}", "${var.admin_id_2}", "${var.admin_id_3}", "${var.admin_id_4}", "${var.admin_id_5}", "${var.admin_id_6}", "${var.admin_id_7}", "${var.admin_id_8}", "${var.admin_id_9}", "${var.admin_id_10}"]
}

resource "ibm_iam_access_group_members" "res_groupmem_users" {
  count = "${length(var.user_access_groups)}"

  access_group_id = "${element(data.ibm_iam_access_group.res_ag_users.*.groups.0.id, count.index)}"
  ibm_ids         =  ["${var.user_id_1}", "${var.user_id_2}", "${var.user_id_3}", "${var.user_id_4}", "${var.user_id_5}", "${var.user_id_6}", "${var.user_id_7}", "${var.user_id_8}", "${var.user_id_9}", "${var.user_id_10}"]
}