resource "google_dataplex_datascan" "full_profile" {
  location       = var.location
  data_scan_id  = var.data_scan_id
  project       = var.project
  description  = "Example resource - Full Datascan Profile"

  data {
    resource = var.data_resource
  }

  execution_spec {
    trigger {
      schedule {
        cron = "TZ=America/New_York 1 1 * * *"
      }
    }
  }

  data_profile_spec {
    #Set a sample of 20%
    sampling_percent = 20
    #Add a row filter where start_station_id > 2000
    row_filter = "<ENTER_ROW_FILTER_EXPRESSION>"
    #Exclude the end_station_id column
    exclude_fields {
      field_names = ["<ENTER_COLUMN_NAME>"]
    }
  }
}
