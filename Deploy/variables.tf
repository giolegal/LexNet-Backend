variable "client_id" {}
variable "client_secret" {}

// Number of agents used in primary node pool in our k8s.
// Right now it is not for production, so less nodes -> cheaper solution.
variable "agent_count" {
    default = 1
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "k8stest"
}

variable cluster_name {
    default = "k8stest"
}

variable resource_group_name {
    default = "lexnet"
}

variable location {
    default = "westeurope"
}

variable log_analytics_workspace_name {
    // workspace name should be globally unique
    default = "lexnet-analytics-workspace"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "West Europe"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}