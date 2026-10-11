variable "cloud_backup_snapshots_lookup" {
  description = <<EOT
Map of cloud_backup_snapshots_lookup, attributes below
Required:
    - cluster_name
    - project_id
Optional:
    - items_per_page
    - page_num
EOT

  type = map(object({
    cluster_name   = string
    project_id     = string
    items_per_page = optional(number)
    page_num       = optional(number)
  }))
}

