
resource "ibm_iam_access_group" "res_ag_1" {
    count = "${length(var.user_access_groups)}"

    name  = "${var.user_access_groups[count.index]}"
}
