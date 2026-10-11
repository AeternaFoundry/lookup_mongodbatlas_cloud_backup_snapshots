data "mongodbatlas_cloud_backup_snapshots" "cloud_backup_snapshots_lookup" {
  for_each = var.cloud_backup_snapshots_lookup

  cluster_name   = each.value.cluster_name
  project_id     = each.value.project_id
  items_per_page = each.value.items_per_page
  page_num       = each.value.page_num
}

