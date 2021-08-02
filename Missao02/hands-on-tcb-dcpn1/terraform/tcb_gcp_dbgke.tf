/*
 * Lines to create a Cloud SQL instance and database
 */

resource "google_sql_database" "database" {
  name              = "dbvaccinated"
  instance          = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name   = "tcb-ccnl1-database-instance"
  region = var.gcp_region
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}

/*
 * This resource provides the following Timeouts configuration options:
 * 
 * create - Default is 15 minutes.
 * update - Default is 10 minutes.
 * delete - Default is 10 minutes.
 */

/*
 * Lines to create a Autopilot Cluster on GKE
 */


resource "google_container_cluster" "primary" {
  name               = "tcb-ccnl1-cluster1"
  location           = var.gcp_region
  initial_node_count = 1
  enable_autopilot = true
  node_config {
    /*
     * Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
     */
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      ambiente = "dev"
    }
    tags = ["ambiente", "dev"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}