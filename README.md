# Amazon Machine Image (AMI) created with Packer

### Prerequisites

  - Packer
  - active AWS account
  - git

### Configuration
Make sure git is installed and then clone this repo
```sh
$ git
$ git clone https://github.com/appbleed/build-ami-packer.git
$ cd build-ami-packer
```
Validate the ubuntu AMI template.
```sh
$ packer validate unbuntu-ami-template.json
```
Build the ubuntu AMI.

```sh
$ packer build unbuntu-ami-template.json
```
Enter the AWS aws_access_key and aws_secret_access_key.
