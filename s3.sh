#! /bin/bash

# Script for s3 manipulation
# 1. create s3 bucket 
# 2. upload a file to the bucket 
# 3. rename a file in the bucket 
# 4. delete the bucket 

echo -e '\nEnter  the name of the bucket you want to create :'
read bucket_name

# create s3 bucket 
aws s3api create-bucket  --bucket $bucket_name
echo -e '\n New Bucket is created'


#upload the file to the bucket 
echo -e '\nEnter the absolute path of the file to upload on S3:'
read absolute_path

aws s3 cp $absolute_path s3://$bucket_name/
echo -e '\n File upload successful'


#rename the file in the bucket 
echo -e '\n enter the name of the file'
read file_name
echo -e '\nEnter the name of the file you want to rename the file in the bucket:'
read newfile_name

aws s3 mv s3://$bucket_name/$file_name  s3://$bucket_name/$newfile_name
echo -e '\n Files rename successful'


#delete the bucket 
echo -e"\nenter the name of the bucket you want to delete: "
read delete_bucket

aws s3 rm s3://$delete_bucket  --recursive 
echo -e '\n Bucket deletion successful'



