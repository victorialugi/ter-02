###cloud vars
variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}
variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}
variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}
###ssh vars
variable "vms_ssh_root_key" {
  type        = string
  default     = "<your_ssh_ed25519_key>"
  description = "ssh-keygen -t ed25519"
}
variable "service_account_key_file" {
  type        = string
  description = "Path to the service account key JSON file"
}
variable "env" {
  type        = string
  default     = "develop"
  description = "Окружение (develop/prod)"
}
variable "project" {
  type        = string
  default     = "platform"
  description = "Название проекта"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
    platform_id   = string
    preemptible   = bool
    nat           = bool
  }))
  description = "Карта ресурсов и дисков для всех ВМ"
}

variable "metadata" {
  type        = map(any)
  description = "Общие метаданные для всех ВМ"
}
