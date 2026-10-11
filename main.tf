resource "azuredevops_project_pipeline_settings" "project_pipeline_settings" {
  for_each = var.project_pipeline_settings

  project_id                           = each.value.project_id
  enforce_job_scope                    = each.value.enforce_job_scope
  enforce_job_scope_for_release        = each.value.enforce_job_scope_for_release
  enforce_referenced_repo_scoped_token = each.value.enforce_referenced_repo_scoped_token
  enforce_settable_var                 = each.value.enforce_settable_var
  publish_pipeline_metadata            = each.value.publish_pipeline_metadata
  status_badges_are_private            = each.value.status_badges_are_private

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

