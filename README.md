# Terraform-Aws

How To Create Ec2 Instance using Terraform And Install Nginx
First Go to Aws Account , then Security-Credential
If needed Then Create user Then Take Access And Private Key

Now Go to Termainal And Install Aws-Cli
Type aws configure
Enter the Private And Access Key

Open Another Terminal Type ssh-keygen (Enter the file name{It Create 2 File filename.pub and filename})
now Change the private key filename to filename.pub

Go to Variable.tf
Go to Key_pair Enter the filename.pub or copy the filename.pub to project_dir
Then Open Current Diirecty Terminal 

Type: 

>Terraform Vaildate      
#check the Format is Correct


>Terraform Plan     
>#Create the Resource 


>Terraform Apply    
>#Check the security and Create the Resource
>Type Yes

To Acess Ec2 
> ssh "filename.pem" username@public_Ipv4_Address



To Check Nginx is install Correctly
>type IPV4 Public Address in The Browser



For Query
https://www.linkedin.com/in/sctgmf/
