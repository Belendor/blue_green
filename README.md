1. Clone repo
2. Enter credentials into AWS CLI (aws configure)
3. terraform init
4. terraform plan
5. terraform apply
6. When promted to enter variable value for var.traffic_distribution you can enter one of 5 load balancing types:

```blue``` (100% load to blue) 

```blue-90``` (90% load to blue and 10% to green) 

```split``` (load is split 50/50 % between green and blue)

```green-90``` (10% load to blue and 90% to green) 

```green``` (100% load to blue)

