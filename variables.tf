# Declaring variables for user-defined parameters

variable "token" {
  type = string
  default = ""
} # export YC_TOKEN="YOUR_YC_TOKEN"

variable "cloud_id" {
  type = string
} # export YC_CLOUD_ID="YOUR_YC_CLOUD_ID"

variable "folder_id" {
  type = string
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
  network_name     = "k8s-net"
  subnet-pub-1     = "public-subnet-a"
  subnet-pub-2     = "public-subnet-b"
  subnet-pub-3     = "public-subnet-c"
  
  zone-1           = "ru-central1-a"
  zone-2           = "ru-central1-b"
  zone-3           = "ru-central1-c"
  
  vm_public_name   = "public-vm"
  vm_image_id      = "fd8t08ih94rivuk5q46j" # ubuntu-2004-lts
}
