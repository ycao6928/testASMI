
Sys.setenv(GCE_AUTH_FILE = "dockertest-14ca839c86a0.json")



library(googleComputeEngineR)
project = "dockertest-259701"
gce_global_project(project)

(tag = "gcr.io/dockertest-259701/testasmi:latest")

gce_global_zone("us-central1-a")
gce_vm(template = "rstudio",
       name = "testasmipython3",
       disk_size_gb = 30,
       predefined_type = "n1-standard-1",
       dynamic_image = tag,
       user = "rstudio",
       password = "pushu")


