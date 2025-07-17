# Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.12.2
- **AWS credentials configured** (required for Terraform to provision resources)

## Setting up AWS Credentials

Terraform uses your AWS credentials to authenticate and manage resources. You can set up your credentials in one of the following ways:

### 1. Using the AWS CLI (Recommended)

If you have the AWS CLI installed, run:

```sh
aws configure
```
You will be prompted to enter your `AWS Access Key ID`, `AWS Secret Access Key`, default region, and output format. This will save your credentials in `~/.aws/credentials` and configuration in `~/.aws/config`.

### 2. Using Environment Variables

You can export your credentials as environment variables:

```sh
export AWS_ACCESS_KEY_ID=your-access-key-id
export AWS_SECRET_ACCESS_KEY=your-secret-access-key
export AWS_DEFAULT_REGION=eu-north-1
```

### 3. Using a Credentials File

Ensure your `~/.aws/credentials` file contains:

```
[default]
aws_access_key_id = your-access-key-id
aws_secret_access_key = your-secret-access-key
```

---

**Note:** Never commit your AWS credentials to version control. 