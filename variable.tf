##########################
# Infrastructure Variables
#########################

#
variable "name_prefix" {
  default = "dcos-gcp-example"
}

# Master CIDR Range
variable "master_cidr_range" {
  default = "10.64.0.0/16"
}

# Agent CIDR Range
variable "agent_cidr_range" {
  default = "10.65.0.0/16"
}

# Global Infra SSH User
variable "infra_ssh_user" {
  default = ""
}

# Global Infra Public SSH Key
variable "infra_public_ssh_key_path" {}

# Global Infra Disk Type
variable "infra_disk_type" {
  default = "pd-ssd"
}

# Global Infra Disk Size
variable "infra_disk_size" {
  default = "128"
}

# Global Infra Machine Type
variable "infra_machine_type" {
  default = "n1-standard-8"
}

# Global Infra Tested OSes Image
variable "infra_dcos_instance_os" {
  default = "coreos_1576.5.0"
}

##############################
#                            #
#  Terraform DCOS Variables  #
##############################

# Number of Masters
variable "num_masters" {
  default = "3"
}

# Number of Private Agents
variable "num_private_agents" {
  default = "2"
}

# Number of Public Agents
variable "num_public_agents" {
  default = "1"
}

# DCOS Version
variable "dcos_version" {
  default = "1.11.4"
}

#####################
# dcos_core variables
#####################

# DCOS License Key Contents (enterprise)
variable "dcos_license_key_contents" {
  default     = ""
  description = "[Enterprise DC/OS] used to privide the license key of DC/OS for Enterprise Edition. Optional if license.txt is present on bootstrap node."
}

# Custom DCOS download path
variable "custom_dcos_download_path" {
  default     = ""
  description = "insert location of dcos installer script (optional)"
}

# DCOS type: 'ee' or 'open'
variable "dcos_variant" {
  default = "open"
}

# DCOS cluster name
variable "dcos_cluster_name" {
  description = "Name of the DC/OS cluster"
  default     = "dcos-example"
}

# Add special tags to the resources created by this module
variable "tags" {
  type    = "list"
  default = []
}
