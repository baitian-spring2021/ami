# Creating Amazon Machine Image (AMI) with Packer

### Included in the Provisioners
  - JDK 11
  - Tomcat 9

### Configuration
> Pre-requisites
> * Packer
> * Git
> * Active AWS account

1. Clone this repo
```sh
$ git clone {repo link}
```
2. Validate the Packer AMI template.
```sh
$ packer validate ami.json
```
3. Build the AMI by giving the required information in command line. 

```sh
$ packer build \
    -var 'aws_access_key={your access key}' \
    -var 'aws_secret_key={your secret key}' \
    -var 'subnet_id={your subnet id}' \
    ami.json
```
or
Build the AMI by filling in the vars.json file.
```sh
$ packer build -var-file=./vars.json ami.json
```


