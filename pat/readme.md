NOTE
=====


To run image with building :
```sh
# Build with proxy enmsp
> docker build -f Dockerfile-proxy -t abreheret:pat .
# Build with with default Dockerfile
> docker build -t abreheret:pat .
# Launching bash in the Docker image
> docker run -ti --rm abreheret:pat /bin/bash
# Launching build_pat.sh in the Docker image with shared volume
> docker run -ti --rm -v //D/Dev/git/docker-test/pat/shared:/root abreheret:pat /bin/bash ./build_pat.sh
```

To clean
```
# show all images :
> docker images
# remove a image :
> docker image rm $IMAGE_ID
```
