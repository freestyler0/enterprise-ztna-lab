\# Terraform Infrastructure



This directory contains the Infrastructure as Code (IaC) configuration used to deploy and manage components of the Enterprise Zero Trust Architecture lab.



\## Overview



Terraform is used to provision and manage Zscaler Private Access (ZPA) resources, enabling a repeatable and version-controlled deployment process.



\## Current Resources



\- Application Segments

\- Segment Groups

\- Server Groups

\- Provider Configuration

\- Input Variables



\## Directory Structure



```

terraform/

├── provider.tf

├── variables.tf

├── main.tf

├── segment\_group.tf

├── server\_group.tf

├── terraform.tfvars.example

└── README.md

```



\## Requirements



\- Terraform 1.5 or later

\- Zscaler ZPA Tenant

\- ZPA API Client ID

\- ZPA API Client Secret

\- Customer ID



\## Initialization



Initialize the working directory:



```bash

terraform init

```



Validate the configuration:



```bash

terraform validate

```



Preview the execution plan:



```bash

terraform plan

```



Apply the configuration:



```bash

terraform apply

```



Destroy the deployed resources:



```bash

terraform destroy

```



\## Configuration



Copy the example variable file:



```bash

cp terraform.tfvars.example terraform.tfvars

```



Populate the required values:



\- Customer ID

\- Client ID

\- Client Secret

\- Private Key (if applicable)



> \*\*Important:\*\* Never commit `terraform.tfvars` or any files containing credentials. 



\## Security



Sensitive information is excluded from version control through the project's `.gitignore`.



Examples include:



\- `terraform.tfvars`

\- `\*.tfstate`

\- `\*.tfstate.backup`

\- `.terraform/`



\## Related Documentation



\- `/docs/09-Terraform-IaC.md`

\- `/docs/07-ZPA-Deployment.md`

\- `/zpa/`



\## References



\- Terraform

\- Zscaler Private Access (ZPA)

\- Infrastructure as Code (IaC)

