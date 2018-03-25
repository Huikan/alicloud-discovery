output "lucast_hostname_list" {
  value = "${join(",", alicloud_instance.lucast.*.instance_name)}"
}

output "lucast_ecs_ids" {
  value = "${join(",", alicloud_instance.lucast.*.id)}"
}

output "lucast_ecs_public_ip" {
  value = "${join(",", alicloud_instance.lucast.*.public_ip)}"
}

output "hostname_list" {
  value = "${join(",", alicloud_instance.django-app.*.instance_name)}"
}

output "ecs_ids" {
  value = "${join(",", alicloud_instance.django-app.*.id)}"
}

output "ecs_public_ip" {
  value = "${join(",", alicloud_instance.django-app.*.public_ip)}"
}

/*
output "rds_id" {
  value = "${alicloud_db_instance.django-app-rds.id}"
}

output "rds_connection_string" {
  value = "${alicloud_db_instance.django-app-rds.connection_string}"
}*/
