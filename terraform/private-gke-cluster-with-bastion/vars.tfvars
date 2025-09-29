project_id             = "private-gke-cluster-with-bastion-project"
region                 = "eu-west1"
cluster_name           = "private-gke-cluster-with-bastion-cluster"
vpc_name               = "private-gke-cluster-with-bastion-vpc"
subnet_name            = "private-gke-cluster-with-bastion-subnet"
master_ipv4_cidr_block = "10.0.2.0/24"
gke_node_cidr          = "10.0.2.0/24"
pods_node_cidr         = "10.0.3.0/24"
svc_node_cidr          = "10.0.4.0/24"
gke_master_cidr        = "10.0.5.0/24"
nat_router_name        = "private-gke-cluster-with-bastion-nat-router"
nat_name               = "private-gke-cluster-with-bastion-nat"
global_ip_name         = "private-gke-cluster-with-bastion-global-ip"
bastion_name           = "private-gke-cluster-with-bastion-bastion-host"
bastion_machine_type   = "ec2-small"
bastion_image          = "ubuntu-2024-lts"
bastion_startup_script = <<-EOT
  #!/bin/bash
  sudo apt-get update
  sudo apt-get install -yq git jq
EOT
bastion_tags                   = ["bastion"]
bastion_firewall_rule_name     = "allow-ssh-bastion"
bastion_firewall_ports         = ["22"]
bastion_source_ip_ranges       = ["0.0.0.0."]
bastion_target_tags            = ["bastion"]
bastion_service_account_roles  = [
  "roles/logging.logWriter",
  "roles/monitoring.metricWriter",
  "roles/monitoring.viewer",
  "roles/compute.osLogin",
  "roles/compute.osAdminLogin",
  "roles/iam.serviceAccountUser",
  "roles/container.admin",
  "roles/container.clusterAdmin",
]
