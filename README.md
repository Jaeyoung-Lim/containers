# containers

This repository contains the `ethzasl` docker enviornment.

## Building the container
You can build the container through the following command

```
make build [registry:=melodic] [rosversion:=melodic]
```
If you want to push this image, you can push by `make push`

## Running the container
```
make run
```
