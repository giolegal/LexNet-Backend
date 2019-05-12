# Inspirations
* [Create a Kubernetes cluster with Azure Kubernetes Service and Terraform](https://docs.microsoft.com/en-us/azure/terraform/terraform-create-k8s-cluster-with-tf-and-aks)
* [Terraform backend azurerm](https://www.terraform.io/docs/backends/types/azurerm.html)

### Prerequisites
* already created container to keep terraform state ***az storage container create -n tfstate --account-name \<YourAzureStorageAccountName> --account-key \<YourAzureStorageAccountKey>***

### Work locally
Assumption: use powershell
* Terraform will work with  Override empty "client_id" and "client_secret" with
\$env:TF_VAR_client_id="Principal Service name"
\$env:TF_VAR_client_secret="Principal Service secret"
* init your terraform
terraform init \`
-backend-config="storage_account_name=\<YourAzureStorageAccountName>" \`
-backend-config="access_key=\<YourStorageAccountAccessKey>"

**terraform plan** to see plan of changes for your current desired infrastructure
