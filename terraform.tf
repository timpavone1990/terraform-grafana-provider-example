terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.13.1"
    }
  }
}

provider "grafana" {
  url  = "http://localhost:3000/"
  auth = "admin:admin"
}

resource "grafana_folder" "tpa" {
  title = "TPa Folder"
}

resource "grafana_dashboard" "test-tpa" {
  config_json = file("test-tpa.json")
  overwrite = true
  folder = grafana_folder.tpa.id
}
