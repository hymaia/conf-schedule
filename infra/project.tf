resource "google_project" "hymaia_conf_schedule" {
  name            = "hymaia-conf-schedule"
  project_id      = "hymaia-conf-schedule"
  org_id          = "409501626013"
  billing_account = "011D62-316FC5-F18CFB"
}

resource "google_project_service" "storage_api" {
  project = google_project.hymaia_conf_schedule.project_id
  service = "storage.googleapis.com"
}

resource "google_project_service" "iam_api" {
  project = google_project.hymaia_conf_schedule.project_id
  service = "iam.googleapis.com"
}
