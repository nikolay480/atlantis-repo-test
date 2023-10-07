resource "yandex_compute_instance" "vm-1" {
name = "test-atlantis"
zone = "ru-central1-c"

resources {
    cores  = 2
    memory = 2
}

boot_disk {
    initialize_params {
    image_id = "fd8emvfmfoaordspe1jr"
    }
}

network_interface {
    subnet_id = data.yandex_vpc_subnet.subnet-3.id
    nat       = true
}

metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
}
}
