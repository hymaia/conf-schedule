resource "google_storage_bucket" "schedule" {
  project = google_project.hymaia_conf_schedule.project_id
  name     = var.bucket_name
  location = var.bucket_location

  uniform_bucket_level_access = true
  force_destroy               = false
}

resource "google_storage_bucket_iam_member" "public_reader" {
  bucket = google_storage_bucket.schedule.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

variable "region" {
  default = "europe-west1"
}

variable "bucket_name" {
  description = "Nom du bucket GCS qui contiendra le schedule.json"
  default = "hymaia-conf-database"
}

variable "bucket_location" {
  default = "EU"
}

output "bucket_url" {
  value = google_storage_bucket.schedule.self_link
}
