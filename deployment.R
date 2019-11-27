library(googleComputeEngineR)
project = "scpworkshop"
gce_global_project(project)

(tag = "gcr.io/scpworkshop/testasmi:b71f33a")
gce_global_zone("us-central1-a")

vm = gce_vm(template = "rstudio",
            name = "alphatest",
            disk_size_gb = 100,
            predefined_type = "n1-standard-32",
            dynamic_image = tag,
            user = "rstudio",
            password = "pushu")

# vm = gce_ssh_setup(vm,
#                    username = "rstudio",
#                    key.pub = "~/.ssh/id_rsa.pub",
#                    key.private = "~/.ssh/id_rsa")
# 
# gce_push_registry(vm, 
#                   save_name = "my_rstudio",
#                   container_name = "rstudio")