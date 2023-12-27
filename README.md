# AWScloudUploader
- I crafted the S3 file uploader script as a hands-on exercise to enhance my bash scripting skills, deepen my understanding of AWS CLI, and practice file handling, user input processing, AWS S3 interaction, and error handling.
- This concise and practical script is designed for individuals who want tangible experience in automating file uploads to Amazon S3 and managing resources in AWS environments.
## Overview
- This bash script automates the process of uploading a local file to an Amazon S3 bucket.
- It checks if the provided file path is valid, verifies the existence of the file, then 
prompts the user for an S3 bucket and folder details before initiating the upload.

## Prerequisites
Before using this script, make sure you have the following prerequisites installed:
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured with appropriate credentials.
## Usage 
1. Ensure the script has executable permissions:
````bash
chmod +x s3_uploader.sh
````
2. Run the script with the local file path as an argument:
````bash
./s3_uploader.sh /path/to/your/file.txt
````
## Instructions
- The script verifies that a file path is provided as an argument.
  - If not, it exits  with a prompt to enter the file path.
- It checks if the specified file exists
- The script prompts the user to enter the destination S3 bucket and folder.
- It uploads the file to the specified S3 destination, creating an object key based on the file name.
- Upon successful upload, a confirmation message is shown.
  - If unsuccessful, an appropriate error message is shown 
## Common Issues
- This code is written in Bash and is intended to run in a Unix-like environment. It is not compatible with Windows.
- Verify the accuracy of your AWS account configurations; the script will not function correctly otherwise.
  
