resource "google_dataplex_datascan" "basic_profile" {
  location       = var.location
  data_scan_id  = var.data_scan_id
  project       = var.project

  data {
    resource = var.data_resource
  }

  execution_spec {
    trigger {
      on_demand {}
    }
  }

 data_profile_spec {}
}