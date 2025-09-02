# Simple Web Server

This repo contains a very basic framework for making a simple web server.

The flow goes like this:

1) add some files into the `public` folder (these are local and not tracked by git)
2) run `make build` to create the docker image that will serve these files
   1) You can override the `IMAGE_NAME` by running `make build IMAGE_NAME=foo/bar:latest`
3) run `make publish` to publish this image to the remote registry
   1) You can override the `IMAGE_NAME` by running `make publish IMAGE_NAME=foo/bar:latest`
4) Now, use the docker-compose template at `./docker-compose.yaml` to deploy this app via any hosting method that
   accepts docker compose stacks natively, like portainer.