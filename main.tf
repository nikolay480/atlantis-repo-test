# Configuring the provider
terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.80.0"
    }
  }
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "nik-2023-dev"
    region     = "ru-central1"
    key        = "states/project-diplom.tfstate"
    
    skip_region_validation      = true
    skip_credentials_validation = true

    
  }
}

provider "yandex" {
  folder_id                = var.folder_id
  cloud_id                 = var.cloud_id
  token                    = var.token
}

# terraform {
#   required_providers {
#     yandex = {
#       source  = "yandex-cloud/yandex"
#       version = "0.99.1"
#     }
#   }

#   backend "s3" 
#     endpoint       = "storage.yandexcloud.net"
#     bucket         = "nik-2023-dev"
#     region         = "ru-central1"
#     key            = "states/project-diplom.tfstate"
  
     
#     skip_region_validation      = true
#     skip_credentials_validation = true
    
#     access_key = "YCAJElgDHqR_wmvo0U4Cumy8t"
#     secret_key = "YCM3Vqou4niWF57ThU1ghbG2zH_oVhX9ikQggruB"

#   }
# }

# provider "yandex" {
#   folder_id                = var.folder_id
#   cloud_id                 = var.cloud_id
  

#   # service_account_key_file = file("~/terraform_files/sa-key.json")
  
# }

