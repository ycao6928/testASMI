library(googleComputeEngineR)
project = "scpworkshop"
gce_global_project(project)

(tag = "gcr.io/scpworkshop/testasmi:alpha")
gce_global_zone("us-central1-a")

vm = gce_vm(template = "rstudio",
            name = "hic",
            disk_size_gb = 200,
            predefined_type = "n1-standard-32",
            dynamic_image = tag,
            user = "rstudio",
            password = Sys.getenv("DOCKER_PWD"))

# vm = gce_ssh_setup(vm,
#                    username = "rstudio",
#                    key.pub = "~/.ssh/id_rsa.pub",
#                    key.private = "~/.ssh/id_rsa")
# 
# gce_push_registry(vm, 
#                   save_name = "my_rstudio",
#                   container_name = "rstudio")