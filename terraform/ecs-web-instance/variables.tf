// all should be in the same VPC

variable "security_group_id" {
  default = "sg-gw80kpqizjg9yrvvhot1"
}

variable "vswitch_id" {
  default =  "vsw-gw85z7eik4frm8jkhv9km" // zone b
}

variable "image_id" {
  default = "centos_7_04_64_20G_alibase_201701015.vhd"
}

// for ECS
variable "eu_central_zone_b" {
  default = "eu-central-1b"
}

// for RDS
variable "eu_central_zone_a" {
  default = "eu-central-1a"
}

variable "ecs_entry_level_x86_type" {
  default = "ecs.t5-lc1m2.large"
}

variable "ecs_network_enhanced_type" {
  default = "ecs.sn2ne.large" //ecs.se1ne
}
/*
variable "ecs_network_enhanced_type" {
  default = "ecs.sn2ne.large"
}
* alicloud_instance.django-app: Error creating Aliyun ecs instance:
&common.Error{ErrorResponse:common.ErrorResponse{Response:common.Response{RequestId:"21BF60E9-E4DF-4E07-996B-25F50690FEA2"},
HostId:"ecs.eu-central-1.aliyuncs.com", Code:"Forbidden.RiskControl", Message:"This operation is forbidden by Aliyun RiskControl system."},
StatusCode:403}
*/


variable "ecs_password" {
  default = "Test12345"
}

variable "allocate_public_ip" {
  default = true
}

variable "internet_max_bandwidth_out" {
  default = 5
}

variable "disk_category" {
  default = "cloud_efficiency"
}
variable "disk_size" {
  default = "40"
}

variable "nic_type" {
  default = "intranet"
}

variable "count" {
  default = "2"
}

variable "count_format" {
  default = "%02d"
}
