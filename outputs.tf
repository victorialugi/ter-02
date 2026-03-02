output "web_name" { value = yandex_compute_instance.platform.name }
output "web_ip"   { value = yandex_compute_instance.platform.network_interface[0].nat_ip_address }
output "web_fqdn" { value = yandex_compute_instance.platform.fqdn }

output "db_name" { value = yandex_compute_instance.db.name }
output "db_ip"   { value = yandex_compute_instance.db.network_interface[0].nat_ip_address }
output "db_fqdn" { value = yandex_compute_instance.db.fqdn }
