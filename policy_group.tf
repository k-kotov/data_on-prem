resource "scalr_policy_group" "policy" {
  name            = "auto_policy_${formatdate("DDMMYYYY", timestamp())}"
  opa_version     = var.opa_version
  vcs_provider_id = "vcs-v0ouva2scjtc0blfh"
  vcs_repo {
    identifier = var.policy_vcs-repo_identifier
    path       = var.policy_vcs-repo_path
    branch     = var.policy_vcs-repo_branch
  }
}

resource "scalr_policy_group_linkage" "policy_link" {
  policy_group_id = scalr_policy_group.policy.id
  environment_id  = scalr_environment.env_no_tag.id

}
