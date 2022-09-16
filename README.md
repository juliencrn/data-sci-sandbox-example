# Python data science sandbox

Repo initial created from the "Python for Algorithmic Trading" book by Yves Hilpisch (O'Reilly).

## Get started

### Requirements

```sh
# Generate RSA keys to secure web services
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mykey.key -out mycert.pem
```

### Installation

All the installation process is written in the `./install.sh` file. 

#### 1. Using Docker

If you want run it locally, use the Docker image (that is calling the install script internally):

```sh
# build the image
docker build -t sandbox .

# run the container
docker run -it sandbox /bin/bash
```

#### 2. Using a cloud instance

Start from `ubuntu` and upload the `./setup.sh` file (that is calling the install script internally), then:

```sh
chmod +x ./setup.sh
./setup.sh 134.122.74.144 # use your cloud instance IP
```