## Description
This container is useful to run tests for tuleap realtime

## How can I use it?
Clone this repo and build the image:
```
$ docker build -t docker-test .
```

Run the image:
```
$ docker run --rm -v "$PWD/":/nodeapp docker-test
```

## How can I choose my NPM registry?

This image let you choose the NPM registry you want to use.
You can do the configuration with the following environment variables:
  * ``NPM_REGISTRY``: registry address
  * ``NPM_USER``: user name used to log in into the registry
  * ``NPM_PASSWORD``: password of the user
  * ``NPM_EMAIL``: public mail associated with the user
