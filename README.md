#In the project, I deployed an E-Commerce website in AWS in a fully automated way using Terraform 

Website deployed 
<img width="1784" height="887" alt="image" src="https://github.com/user-attachments/assets/8e7105c7-f3b4-4b03-b0bf-11eee103138f" />
<img width="1656" height="942" alt="image" src="https://github.com/user-attachments/assets/f74ace09-f58e-49ea-8a64-982d2fe0fd20" />

**I created 39 cloud infrastructures using Terraform**
<img width="975" height="1049" alt="image" src="https://github.com/user-attachments/assets/ced6b755-fc8d-40b1-a8a7-7f558b9eb810" />


**Step 1: Clone repo to local machine**

```git clone https://github.com/segunofe/Deploy-Ecommerce-Website-In-AWS-Using-Terraform.git```

**Step 2: Grant local machine access to create resources in AWS **

Run "aws configure" and provide Access and Secret Keys
<img width="1016" height="269" alt="image" src="https://github.com/user-attachments/assets/efd622ff-06da-4594-8759-e1056315c5ca" />

**Step 3: Create S3 bucket and upload application files **

Precisely, nest.zip, AppServiceProvider.php and V1_nest.sql files found in "app" folder on this repo


Why this step?

deployment-script.sh.tpl and db-migrate-script.sh.tpl scripts referenced the S3 URI of the application files from an S3 bucket. 

**Step 4: Create an S3 bucket to store Terraform state file**

It is recommended to do this from AWS Console.  

For this project in named mine "nestso-terraform-remote-state-bucket"
<img width="802" height="497" alt="image" src="https://github.com/user-attachments/assets/0a02e190-54c2-48af-b827-4ad3e13b630a" />



**Step 5: Create a DynamoDB table for state locking**

It is recommended to do this from AWS Console 

Partition key: LockID 
<img width="1882" height="310" alt="image" src="https://github.com/user-attachments/assets/93fb11b2-a579-48a6-b95a-47b42478b7fe" />

**Step 6: Walk through each Terraform configuration file and update as needed**

Files that MUST be updated with correct values
- backend.tf : s3 bucket name and DynamoDB table name
- terraform.tfvars : region, operator_email, sql_script_s3_uri, web_files_s3_uri, service_provider_file_s3_uri, amazon_linux_ami_id 

After "terraform apply -auto-approve", 39 cloud infrastructures will be created in AWS


**Step 7: In the directory where the deployment and db-migrate scripts are, run the following commands:**

terraform init
terraform plan 
terraform apply  


**Step 8: Access the website via the load balancer dns, outputted on the Terminal **

Note: Ensure you create all resources in the same region 

**ScreenShots**
1. VPC Resources
<img width="1858" height="582" alt="image" src="https://github.com/user-attachments/assets/96dbae7c-a477-4644-af71-673233de4cb1" />
2. Security Groups
<img width="1785" height="364" alt="image" src="https://github.com/user-attachments/assets/65f7efe6-ef7b-4240-82ed-5f331fe5cd55" />
3. Endpoint
<img width="1377" height="239" alt="image" src="https://github.com/user-attachments/assets/38da2592-2a65-460e-b6de-5723d2a985fe" />
4. IAM role
<img width="1040" height="254" alt="image" src="https://github.com/user-attachments/assets/3ca0143a-1b4b-41f0-b0e6-5099b21b0d16" />
   
5. Database
<img width="1486" height="290" alt="image" src="https://github.com/user-attachments/assets/464a9427-9efb-4f60-b160-250a820851c5" />

6. webserver and server for data migration 
<img width="1893" height="335" alt="image" src="https://github.com/user-attachments/assets/96751484-1eae-4112-9138-1b62557c2809" />

7. Target Group
<img width="1380" height="218" alt="image" src="https://github.com/user-attachments/assets/f97600cf-5aeb-44aa-8e06-4fd5fd8aaad0" />

8. Load balancer
<img width="1040" height="259" alt="image" src="https://github.com/user-attachments/assets/69acf2e4-afad-464c-a4ad-08d554ccbc3b" />

9. Created 1 Listener with Terraform and the other manually
<img width="1361" height="398" alt="image" src="https://github.com/user-attachments/assets/17fb5d69-f9de-4356-93b7-9cb104ab7dab" />

10. Launch template
<img width="1105" height="232" alt="image" src="https://github.com/user-attachments/assets/071e7957-fddf-47f1-8fc1-23cdf736233f" />

11. Auto Scaling Group
<img width="1829" height="234" alt="image" src="https://github.com/user-attachments/assets/fd49b795-117d-456f-8b8c-0e38adebe3c7" />

12. Secured Website 
<img width="1872" height="897" alt="image" src="https://github.com/user-attachments/assets/557d9f0f-d73e-4456-b38c-b1fa14e149cf" />




