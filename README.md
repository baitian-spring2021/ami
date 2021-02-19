# Creating Amazon Machine Image (AMI) with Packer

### Prerequisites

  - Packer
  - active AWS account
  - git

### Configuration
1. Make sure git is installed and then clone this repo
```sh
$ git
$ git clone {repo link}
```
2. Go into the working directory.
3. Validate the Packer AMI template.
```sh
$ packer validate ami.json
```
4. Build the AMI with required information. 

```sh
$ packer build \
    -var 'aws_access_key={your access key}' \
    -var 'aws_secret_key={your secret key}' \
    -var 'subnet_id={your subnet id}' \
    ami.json
```

