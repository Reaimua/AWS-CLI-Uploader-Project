#!/bin/bash

#this line is used to verify that a path was inserted as an argument,if not, it exits the script
if [ -z "$1" ]; then
    echo "Please enter the file path for your desired file. "
    echo "For example: $0 <file_path>"
    exit 1
fi

#assigns argument to variable and checks if file exists
FILENAME="$1"
if [ -f "$FILENAME" ]; then
    echo "This file exists."
else
    echo "this file does not exist or is not a regular file"
    exit 1
fi

aws configure
#Prompts the user to enter destination bucket and folder 
read -p "Please enter your S3 Bucket: " S3_BUCKET
read -p "Please enter your Folder name: " S3_PATH

#building suspense.. and uploading from local path to cloud destination
echo "Now uploading $(basename "$1") to s3://$S3_BUCKET/$S3_PATH"
sleep 1

#creates a destination object key within the bucket and names it based on the file you submitted
S3_KEY="$S3_PATH/$(basename "$1")"

#verifies that the code works, if not it gives the message back to the user 
if aws s3 cp "$1" "s3://$S3_BUCKET/$S3_KEY"; then
    echo "Upload Successful!"
else    
    exit_code=$?
    echo "Error uploading file. Please spellcheck the Bucket name Exit code: $exit_code"
fi