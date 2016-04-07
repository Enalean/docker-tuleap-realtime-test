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
