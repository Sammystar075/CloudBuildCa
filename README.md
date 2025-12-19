## What does this project do?

- Deploys a cloud run configuration to google Cloud builder.

- Runs a static website through Nginx inside a container.

---
## Installation:

### Step 1: install dependencies.

### Gcloud-CLI
#### MacOS
```shell
		brew install --cask gcloud-cli
```

#### Windows
```bash
		winget install -e --id Google.CloudSDK
```

#### Linux
```shell
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz
```

```shell
tar -xf google-cloud-cli-linux-x86_64.tar.gz
```

```shell
./google-cloud-sdk/install.sh
```
### Step 2: Initialise google cloud
```shell
gcloud init
```

If any issues are encountered refer to the documentation [Here](https://docs.cloud.google.com/sdk/docs/install-sdk)


### Step 3: Install Project Files

```shell
git clone https://github.com/Sammystar075/CloudBuildCa.git
cd CloudBuildCa/
```

### Step 4: Excecute Start Script
```shell
bash start.sh
```