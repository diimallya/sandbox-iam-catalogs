
resource "ibm_iam_access_group" "res_ag" {
    count = "${length(var.user_access_groups)}"

    name  = "${var.user_access_groups[count.index]}"
}
