# Docker Image for Bruno

This project contains a Dockerfile to build an image for
[Bruno](https://github.com/usebruno/bruno), a tool for testing and
exploring web APIs.

## Build

You can build the image from the remote Git repo, without having to check it out even:

```shell
docker build -t bruno-image github.com/davidkarlsen/bruno-image
```

## Download

There is a prebuilt image available in the GitHub Container Registry, so
you can simply use that:

```shell
# fetch image
docker pull ghcr.io/davidkarlsen/bruno-image:main
```

## Usage

### Plain Docker

```shell
# get help output
docker run --rm ghcr.io/davidkarlsen/bruno-image:main help
# run on the collection in the current directory
docker run --rm --volume .:/tests --workdir /tests ghcr.io/davidkarlsen/bruno-image:main
```

### Docker Compose

You can integrate this as a service to run the tests (typically against
other services in the setup) in the isolation of a container.

```yaml
version: '3.6'

services:
  bruno:
    build: github.com/davidkarlsen/bruno-image:main
    # set working dir to the directory with the test collection
    working_dir: /tests
    volumes:
      # mount test collection into the container
      - type: bind
        source: .
        target: /tests
    profiles:
      # set a profile to prevent this from being started by default
      - bruno
```

```shell
# fetch help output
docker compose run bruno help
# run bruno on the collection in the mounted directory
docker compose run bruno
```

## Troubleshooting

### Error "You can run only at the root of a collection"

Chances are that you forgot to mount the test collection into the
container's working directory. Double-check that this is set up
correctly.
Another possible mistake is that you simply haven't started writing
a test collection yet. The `bru` CLI identifies a test collection by
this file. An empty JSON object ("{}") as content is enough.
