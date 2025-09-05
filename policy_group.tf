resource "scalr_policy_group" "policy" {
  name            = "auto_policy_${formatdate("DDMMYYYY", timestamp())}"
  opa_version     = var.opa_version
  vcs_provider_id = "vcs-v0ov0h9hjod4de9jr"
  vcs_repo {
 identifier = "k-kotov/Policyqaqaqaqaaqaqaqaqaqaqaqaqaqaqaqaqaqaqaqaqaqaqaq00077777777"
    path       = "cost"
    branch     = "second"
  }
}

resource "scalr_policy_group_linkage" "policy_link" {
  policy_group_id = scalr_policy_group.policy.id
  environment_id  = scalr_environment.env_no_tag.id

}


