
resource "alicloud_instance" "django-app" {
  availability_zone = "${var.eu_central_zone_b}" # eu-central-1 zone B

  instance_name = "hi-work-01"
  host_name = "hi-work-01"
  image_id = "${var.image_id}"
  instance_type = "${var.ecs_network_enhanced_type}"

  security_groups = ["sg-gw80kpqizjg9yrvvhot1"]
  vswitch_id = "vsw-gw85z7eik4frm8jkhv9km" // a: "vsw-gw8t04l8s2rsw9v2ipqrn"

  internet_max_bandwidth_out = "10"

  password = "${var.ecs_password}"

  instance_charge_type = "PostPaid"
  system_disk_category = "cloud_efficiency"
}

/*
* alicloud_db_instance.django-app-rds: Error creating Alicloud db instance: &errors.ServerError{httpStatus:403,
 requestId:"0F5A9E7F-A3C6-48EA-9EA3-0986C241A91B", hostId:"rds.eu-central-1.aliyuncs.com",
 errorCode:"InvalidSaleComponentFault", recommend:"",
 message:"The request references an incorrect order sales component. Contact the customer support.", comment:""}

resource "alicloud_db_instance" "django-app-rds" {
  zone_id = "${var.eu_central_zone_a}"
  engine = "MySQL"
  engine_version = "5.7"
  instance_storage = 1000 //for MySQL 5.7 basic single node edition;
  instance_type = "mysql.n2.medium.1"
  vswitch_id = "vsw-gw8t04l8s2rsw9v2ipqrn"
  instance_charge_type = "Postpaid"
}
*/


resource "alicloud_instance" "lucast" {
  availability_zone = "${var.eu_central_zone_b}" # eu-central-1 zone B

  instance_name = "lucast-load-test-${format(var.count_format, count.index+1)}"
  host_name = "lucast-load-test-${format(var.count_format, count.index+1)}"
  image_id = "${var.image_id}"
  instance_type = "${var.ecs_entry_level_x86_type}"
  count = "${var.count}"
  security_groups = ["sg-gw80kpqizjg9yrvvhot1"]
  vswitch_id = "vsw-gw85z7eik4frm8jkhv9km" // a: "vsw-gw8t04l8s2rsw9v2ipqrn"

  internet_max_bandwidth_out = "${var.internet_max_bandwidth_out}"

  password = "${var.ecs_password}"

  instance_charge_type = "PostPaid"
  system_disk_category = "cloud_efficiency"

}



