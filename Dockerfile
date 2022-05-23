# Docker image that will have git and python3 installed.
# Settled for below being the latest and runs an app not just basic /bin/bash.

FROM ubuntu/nginx:1.18-22.04_beta
RUN apt -y update && apt -y install git python3