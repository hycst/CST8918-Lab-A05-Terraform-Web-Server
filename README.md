#####  CST8918-Lab-A05 Terraform Web Server

###### architecture diagram
<img width="1139" height="713" alt="image" src="https://github.com/user-attachments/assets/07ab1693-ed9e-4b13-ab57-7ee19fd953a0" />


###### terraform validate success

<img width="685" height="129" alt="image" src="https://github.com/user-attachments/assets/d8699982-a4d9-4d71-b540-f9769724df84" />

###### terraform apply showing network resources created
<img width="1322" height="944" alt="image" src="https://github.com/user-attachments/assets/235bcc84-4fe3-4c2e-b10e-d8e9fc666685" />


<img width="1890" height="970" alt="image" src="https://github.com/user-attachments/assets/8d691767-400a-4c65-97cb-ca8845334653" />
<img width="1562" height="979" alt="image" src="https://github.com/user-attachments/assets/5eb09e40-16b7-449e-a646-eb38389616ff" />
<img width="888" height="753" alt="image" src="https://github.com/user-attachments/assets/7eccc4f7-fa9d-4f50-8246-44fef4aab02a" />
<img width="826" height="979" alt="image" src="https://github.com/user-attachments/assets/d67cde22-f1a0-4d0e-b232-847c894129c2" />

###### Resource group
<img width="1910" height="561" alt="image" src="https://github.com/user-attachments/assets/96220827-c720-4585-867a-a821b33a6d92" />

##### 
<img width="2361" height="1546" alt="image" src="https://github.com/user-attachments/assets/c1ea4682-b676-41c7-b40e-2e61116125e7" />

#####
<img width="1549" height="1291" alt="image" src="https://github.com/user-attachments/assets/c36c9ce9-d029-400f-ba45-04b2bfba67e6" />


##### Error 1: VM Creation Problem
I met problem with create VM,  after investigation, I found it is due to the subcription. 
Error Message
SkuNotAvailable:
The requested VM size (Standard_B1s, Standard_DS1_v2, etc.) is currently not available.
Explanation

During deployment, Terraform successfully created the Resource Group, Virtual Network, Subnet, Network Security Group, Public IP Address, and Network Interface. However, the virtual machine could not be created because Azure returned a SkuNotAvailable error. This indicates that the requested VM size was temporarily unavailable in the selected Azure region for the Azure for Students subscription. The same error occurred when attempting to create the VM directly using the Azure CLI, confirming that the issue was caused by Azure capacity restrictions rather than an error in the Terraform configuration.


##### Error 2: Azure Policy Restriction
Error Message
RequestDisallowedByAzure
Explanation

Initially, the deployment was blocked because the Azure subscription only allowed deployment in specific regions. I updated the Azure Policy to include additional regions and changed the Terraform region variable accordingly. Although this resolved the policy restriction, VM creation continued to fail because of Azure capacity limitations.


#####  What I learn from the lab:
From this lab, I leaned, even the Infrastructure as Code can correctly define and provision cloud resources, but successful deployment also depends on Azure subscription policies, regional capacity, and service availability. I learned how to distinguish between Terraform configuration errors and Azure platform limitations by validating the deployment using both Terraform and the Azure CLI. Additionally, I gained experience resolving Git repository synchronization issues when working with remote repositories.
