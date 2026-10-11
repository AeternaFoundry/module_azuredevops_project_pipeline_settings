variable "project_pipeline_settings" {
  description = <<EOT
Map of project_pipeline_settings, attributes below
Required:
    - project_id
Optional:
    - enforce_job_scope
    - enforce_job_scope_for_release
    - enforce_referenced_repo_scoped_token
    - enforce_settable_var
    - publish_pipeline_metadata
    - status_badges_are_private
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id                           = string
    enforce_job_scope                    = optional(bool)
    enforce_job_scope_for_release        = optional(bool)
    enforce_referenced_repo_scoped_token = optional(bool)
    enforce_settable_var                 = optional(bool)
    publish_pipeline_metadata            = optional(bool)
    status_badges_are_private            = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.project_pipeline_settings : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

