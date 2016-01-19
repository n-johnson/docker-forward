# docker-forward
Docker image to expose a port of an already running container to the host machine

### Usage:

```

docker run -it -p 5000:5000 --env PORT_LOCAL=5000 --env ADDRESS_REMOTE=172.17.0.2 --env PORT_REMOTE=5432 njohnson/docker-forward

```

The port exposed via `-p 5000:5000` must match the variable set as PORT_LOCAL. There currently is not a way for a running container to introspect its own exposed ports, so it must be manually set via the environment variable PORT_LOCAL.

