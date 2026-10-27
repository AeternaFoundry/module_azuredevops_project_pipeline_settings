output "project_pipeline_settings_id" {
  description = "Map of id values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.id }
}
output "project_pipeline_settings_enforce_job_scope" {
  description = "Map of enforce_job_scope values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_job_scope }
}
output "project_pipeline_settings_enforce_job_scope_for_release" {
  description = "Map of enforce_job_scope_for_release values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_job_scope_for_release }
}
output "project_pipeline_settings_enforce_referenced_repo_scoped_token" {
  description = "Map of enforce_referenced_repo_scoped_token values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_referenced_repo_scoped_token }
}
output "project_pipeline_settings_enforce_settable_var" {
  description = "Map of enforce_settable_var values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.enforce_settable_var }
}
output "project_pipeline_settings_project_id" {
  description = "Map of project_id values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.project_id }
}
output "project_pipeline_settings_publish_pipeline_metadata" {
  description = "Map of publish_pipeline_metadata values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.publish_pipeline_metadata }
}
output "project_pipeline_settings_status_badges_are_private" {
  description = "Map of status_badges_are_private values across all project_pipeline_settings, keyed the same as var.project_pipeline_settings"
  value       = { for k, v in azuredevops_project_pipeline_settings.project_pipeline_settings : k => v.status_badges_are_private }
}

