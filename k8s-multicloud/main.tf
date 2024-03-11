## Amazon Web Services (EKS)
module "amazon" {
  source  = "eazevedo-cloud/madeinweb/aws"
  version = "1.0.3"

  enable_amazon = var.enable_amazon

}

## Google Cloud Platform (GKE)
module "google" {
  source  = "eazevedo-cloud/madeinweb/google"
  version = "1.1.1"

  enable_google = var.enable_google

  gcp_project = var.gcp_project

  gke_nodes = var.nodes
}

## Microsoft Azure (AKS)
module "microsoft" {
  source  = "eazevedo-cloud/madeinweb/azure"
  version = "1.2.1"

  enable_microsoft = var.enable_microsoft

  az_tenant_id     = var.az_tenant_id
  az_client_id     = var.az_client_id
  az_client_secret = var.az_client_secret

  aks_nodes = var.nodes
}

resource "local_file" "kubeconfigaws" {
  count    = var.enable_amazon ? 1 : 0
  content  = module.amazon.kubeconfig_path_aws
  filename = "${path.module}/kubeconfig_aws"

  depends_on = [module.amazon]
}

resource "local_file" "kubeconfiggke" {
  count    = var.enable_google ? 1 : 0
  content  = module.google.kubeconfig_path_gke
  filename = "${path.module}/kubeconfig_gke"

  depends_on = [module.google]
}

resource "local_file" "kubeconfigaks" {
  count    = var.enable_microsoft ? 1 : 0
  content  = module.microsoft.kubeconfig_path_aks
  filename = "${path.module}/kubeconfig_aks"

  depends_on = [module.microsoft]
}
