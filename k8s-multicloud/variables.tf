variable "enable_amazon" {
  description = "Enable / Disable Amazon"
  type        = bool
  default     = true
}

variable "enable_google" {
  description = "Enable / Disable Google"
  type        = bool
  default     = false
}

variable "enable_microsoft" {
  description = "Enable / Disable Microsoft"
  type        = bool
  default     = false
}

variable "enable_oracle" {
  description = "Enable / Disable Oracle"
  type        = bool
  default     = false
}


## Kubernetes worker nodes
variable "nodes" {
  description = "Worker nodes (e.g. `2`)"
  type        = number
  default     = 2
}


### Amazon
variable "aws_profile" {
  description = "AWS cli profile (e.g. `default`)"
  type        = string
  default     = "default"
}

## Google Cloud
variable "gcp_project" {
  description = "GCP Project ID"
  type        = string
  default     = ""
}


## Microsoft Azure
variable "az_client_id" {
  description = "Azure Service Principal appId"
  type        = string
  default     = ""
}

variable "az_client_secret" {
  description = "Azure Service Principal password"
  type        = string
  default     = ""
}

variable "az_tenant_id" {
  description = "Azure Service Principal tenant"
  type        = string
  default     = ""
}


### Oracle Cloud Infrastructure
variable "oci_user_ocid" {
  description = "OCI User OCID"
  type        = string
  default     = ""
}

variable "oci_tenancy_ocid" {
  description = "OCI Tenancy OCID"
  type        = string
  default     = ""
}

variable "oci_fingerprint" {
  description = "OCI SSH public key fingerprint"
  type        = string
  default     = ""
}
