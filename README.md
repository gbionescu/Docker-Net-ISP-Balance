# Docker-Net-ISP-Balance

This repository hosts a Docker container based on Ubuntu 18.04 which runs [Net-ISP-Balance](https://lstein.github.io/Net-ISP-Balance/).

### Build the container
Edit balance.conf to fit your configuration and run:
`./build.sh`

### Run the container
`./start.sh`

Note: The container is executed with `privileged` and `--net=host`!
