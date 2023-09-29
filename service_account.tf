
# Service account sa

resource "yandex_iam_service_account" "sa-storage" {
  folder_id   = var.folder_id
  description = "Service account for backet"
  name        = "sa-storage"
}

resource "yandex_resourcemanager_folder_iam_member" "sa-editor" {
  folder_id = var.folder_id
  role      = "storage.editor"
  member    = "serviceAccount:${yandex_iam_service_account.sa-storage.id}"
  depends_on = [
    yandex_iam_service_account.sa,
  ]
}

resource "yandex_resourcemanager_folder_iam_member" "sa-kms-encrypt" {
  folder_id = var.folder_id
  role      = "kms.keys.encrypterDecrypter"
  member    = "serviceAccount:${yandex_iam_service_account.sa-storage.id}"
  depends_on = [
    yandex_iam_service_account.sa,
  ]
}

resource "yandex_iam_service_account_static_access_key" "storage-key" {
  service_account_id = yandex_iam_service_account.sa-storage.id
  description        = "Access keys for my backet"
  depends_on = [
    yandex_iam_service_account.sa-storage,
  ]
}

# Service account ig-sa

resource "yandex_iam_service_account" "sa" {
  name        = "sa"
  description = "Service account to manage Instances"
}

resource "yandex_resourcemanager_folder_iam_member" "editor" {
  folder_id = var.folder_id
  role      = "editor"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
  depends_on = [
    yandex_iam_service_account.sa,
  ]
}
