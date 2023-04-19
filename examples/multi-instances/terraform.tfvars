# Shared management and outside Interface
cisco_product_version = "cisco-asav-9-16-1-28"
project_id            = ""
region                = "us-west1"
num_instances         = 2
vm_zones              = ["us-west1-a", "us-west1-a"]
vm_machine_type       = "c2-standard-4"
vm_instance_labels = {
  firewall    = "asa"
  environment = "dev"
  usecase     = "shared"
}
day_0_config      = "shared-mgmt-config.txt"
admin_ssh_pub_key = ""
enable_password   = "C8Npp2E61Az@6z3L"
networks = [
  {
    name         = "vpc-mgmt"
    cidr         = "10.10.10.0/24"
    appliance_ip = ["10.10.10.10", "10.10.10.9"]
    external_ip  = true
  },
  {
    name         = "vpc-inside"
    cidr         = "10.10.11.0/24"
    appliance_ip = ["10.10.11.10", "10.10.11.9"]
    external_ip  = false
  },
  {
    name         = "vpc-dmz1"
    cidr         = "10.10.12.0/24"
    appliance_ip = ["10.10.12.10", "10.10.12.9"]
    external_ip  = false
  },
  {
    name         = "vpc-dmz2"
    cidr         = "10.10.13.0/24"
    appliance_ip = ["10.10.13.10", "10.10.13.9"]
    external_ip  = false
  }
]
mgmt_network    = "vpc-mgmt"
inside_network  = "vpc-inside"
dmz1_network    = "vpc-dmz1"
dmz2_network    = "vpc-dmz2"
service_port    = 80
use_internal_lb = true
