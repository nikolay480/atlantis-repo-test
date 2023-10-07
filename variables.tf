# Declaring variables for user-defined parameters

variable "token" {
  type = string
  default = ""
} # export YC_TOKEN="YOUR_YC_TOKEN"

variable "cloud_id" {
  type = string
  default = ""
} # export YC_CLOUD_ID="YOUR_YC_CLOUD_ID"

variable "folder_id" {
  type = string
  default = ""
} # export YC_FOLDER_ID="YOUR_YC_FOLDER_ID"


variable "vm_user" {
  type    = string
  default = "vm-user"
}

variable "ssh_key_path" {
  default = "~/.ssh/id_rsa.pub"
}


# Adding other parameters

locals {
  network_name  = "k8s-net"
  subnet-pub-1  = "public-subnet-a"
  subnet-pub-2  = "public-subnet-b"
  subnet-pub-3  = "public-subnet-c"
  
  zone-1        = "ru-central1-a"
  zone-2        = "ru-central1-b"
  zone-3        = "ru-central1-c"
  

  master_cores         = {
        default = 2
        stage   = 2
        prod    = 2
  }
  master_memory        = {
        default = 2
        stage   = 2
        prod    = 4
  }
  master_core_fraction = {
        default = 5
        stage   = 20
        prod    = 100
  }
  master_disk_size = {
        default = 5
        stage   = 20
        prod    = 40
  }
  master_disk_type = {
        default = "network-hdd"
        stage   = "network-hdd"
        prod    = "network-sdd"
  }
  master_group_size = {
        default = 1
        stage   = 1
        prod    = 3
  }
  worker_cores      = {
        default = 2
        stage   = 2
        prod    = 2
  }
  worker_memory    = {
        default = 2
        stage   = 2
        prod    = 2
  }
  worker_core_fraction = {
        default = 5
        stage   = 20
        prod    = 100
  }
  worker_disk_size = {
        default = 5
        stage   = 20
        prod    = 40
  }
  worker_disk_type = {
        default = "network-hdd"
        stage   = "network-hdd"
        prod    = "network-hdd"
  }
  worker_group_size = {
        default = 2
        stage   = 3
        prod    = 4
  }
}
