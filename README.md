# Amazon Machine Image (AMI) created with Packer

### Prerequisites

  - Packer
  - active AWS account
  - git

### Configuration
Make sure git is installed and then clone this repo
```sh
$ git
$ git clone {repo link}
$ cd build-ami-packer
```
Validate the Packer AMI template.
```sh
$ ./packer validate ami.json
```
Build the AMI.

```sh
$ ./packer build \
    -var 'aws_access_key=REDACTED' \
    -var 'aws_secret_key=REDACTED' \
    -var 'aws_region=us-east-1' \
    ami.json
```
Enter the AWS aws_access_key and aws_secret_access_key.
