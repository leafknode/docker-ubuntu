# docker-ubuntu
Simple Dockerfile for creating a base Ubuntu Trusty container.  This image is hosted on Docker Hub and can be referenced via the following:

```
FROM leafknode/base-ubuntu
```

# Building
To Build this, clone the repository and type:

```
docker build -t leafknode/base-ubuntu .
```

# Accessing the shell
If you want to access the shell, type the following:

```
docker run -t -i leafknode/base-ubuntu /bin/bash
```
