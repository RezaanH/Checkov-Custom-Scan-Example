# Checkov-Custom-Scanning-Example

Hi guys! Hope you enjoyed reading my first ever blog post! If you've come across this repo without reading it first, please do read it at https://the-security-bucket.hashnode.dev/preventing-unsafe-infrastructure-as-code-with-checkov

## Prerequisites

- **Python 3.8+** - Required for Checkov
- **pip** - Python package installer (usually comes with Python)

### Install Checkov

```bash
# Install Checkov via pip
pip install checkov

# Or if you prefer pip3
pip3 install checkov

# Verify installation
checkov --version
```

### Alternative Installation Methods

- **Via Homebrew** (macOS/Linux): `brew install checkov`
- **Via Docker**: `docker run --rm -it bridgecrew/checkov`
- **Via pipx** (isolated environment): `pipx install checkov`


## How to use this repo? 

This repo is a collection of the terraform code and checkov checks used in my 3 repo set up.

It has been ultra simplified here so you can give it a go locally without painstakingly setting up the environment like I did.

### Step 1: Clone the Repo

Start by pulling the repo down into your local VS Code:

```bash
git clone https://github.com/RezaanH/Checkov-Custom-Scan-Example.git
```

### Step 2: Explore the Code

Have a look at the `main.tf` - I've added in 2 blocks of code that creates an S3 resource:
- One is created through using the **raw terraform code** (currently commented out)
- The other is created using the **module** located in the modules folder

To view what exactly is in the module, open the `s3-bucket` folder within the `modules` folder.

### Step 3: Run the Custom Check

Without changing anything, run the below command:

```bash
checkov -f main.tf --external-checks-dir checkov-checks --check CUSTOM_AWS_1
```

This will run the custom check located in the `checkov-checks` folder which looks for S3 buckets created with raw terraform code.

**Expected result:** The check should return empty ✅

### Step 4: Test the Check

Now try uncommenting the raw S3 code and running that checkov command again.

**Expected result:** The check will now flag up that line of code! ❌ 

**(Make sure you press Ctrl + S to save your changes once you uncomment the code)**

