output "project_pipeline_settings_id" {
  description = "Map of id values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no id are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_pipeline_settings_enforce_job_scope" {
  description = "Map of enforce_job_scope values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no enforce_job_scope are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_job_scope if v.enforce_job_scope != null }
}
output "project_pipeline_settings_enforce_job_scope_for_release" {
  description = "Map of enforce_job_scope_for_release values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no enforce_job_scope_for_release are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_job_scope_for_release if v.enforce_job_scope_for_release != null }
}
output "project_pipeline_settings_enforce_referenced_repo_scoped_token" {
  description = "Map of enforce_referenced_repo_scoped_token values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no enforce_referenced_repo_scoped_token are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_referenced_repo_scoped_token if v.enforce_referenced_repo_scoped_token != null }
}
output "project_pipeline_settings_enforce_settable_var" {
  description = "Map of enforce_settable_var values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no enforce_settable_var are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_settable_var if v.enforce_settable_var != null }
}
output "project_pipeline_settings_project_id" {
  description = "Map of project_id values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "project_pipeline_settings_publish_pipeline_metadata" {
  description = "Map of publish_pipeline_metadata values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no publish_pipeline_metadata are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.publish_pipeline_metadata if v.publish_pipeline_metadata != null }
}
output "project_pipeline_settings_status_badges_are_private" {
  description = "Map of status_badges_are_private values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings except keys with no status_badges_are_private are omitted"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.status_badges_are_private if v.status_badges_are_private != null }
}

