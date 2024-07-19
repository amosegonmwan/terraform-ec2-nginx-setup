# ec2-nginx-setup

This project demonstrates how to provision an EC2 instance using the latest Ubuntu AMI, create a custom VPC, and use user-data to install Nginx, displaying the default Nginx homepage on the browser.

## Project Overview

1. **Create a data source for the latest Ubuntu AMI**
2. **Provision an EC2 instance in a custom VPC**
3. **Use user-data to install Nginx**

## File Structure

1. **provider.tf**: Defines the required providers and specifies the AWS region.
2. **data.tf**: Contains the data source for fetching the latest Ubuntu AMI.
3. **variable.tf**: Defines the variables used in the Terraform configuration.
4. **vpc.tf**: Configures the VPC, subnet, internet gateway, and route table.
5. **app.sh**: User-data script to install Nginx on the EC2 instance.
6. **ec2.tf**: Provisions the EC2 instance using the data source and user-data script.
7. **output.tf**: Defines the outputs for the EC2 public IP and the Ubuntu AMI ID.

## Steps

### Step 1: Create Provider Configuration

- Define the required providers and specify the AWS region in `provider.tf`.

### Step 2: Fetch the Latest Ubuntu AMI

- Create a data source to fetch the latest Ubuntu AMI in `data.tf`.

### Step 3: Define Variables

- Define necessary variables such as AWS region, EC2 instance type, keypair name, VPC CIDR block, and instance tags in `variable.tf`.

### Step 4: Configure VPC

- Create a custom VPC, subnet, internet gateway, and route table in `vpc.tf`.

### Step 5: User-Data Script

- Write a user-data script `app.sh` to install Nginx on the EC2 instance.

### Step 6: Provision EC2 Instance

- Use the fetched Ubuntu AMI and user-data script to provision an EC2 instance in `ec2.tf`.

### Step 7: Define Outputs

- Define outputs for the EC2 public IP and the Ubuntu AMI ID in `output.tf`.