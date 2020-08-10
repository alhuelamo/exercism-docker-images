# Exercism Docker Images

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/alhuelamo/exercism)](https://hub.docker.com/r/alhuelamo/exercism)

A set of Docker images to carry out exercises from [Exercism](https://exercism.io) and keep your machine clean. Each image has preinstalled a minimum set of dependencies to get started with some of the tracks.

## Usage

These images are publicly available. Just run

```sh
docker run -it alhuelamo/exercism:<track>
```

This should show the container's prompt.

### Configuring Exercism API token

Once you log in the container, you should configure your Exercism API token. To do so, just entrer:

```sh
exercism configure --token=YOUR_API_TOKEN
```

Further info in [Exercism docs](https://exercism.io/cli).

At this point you can download, develop, and submit your exercises using exercism CLI. Even you can use remote connection tools, like [Visual Studio Code](https://code.visualstudio.com) with the [Docker extensions](https://code.visualstudio.com/docs/containers/overview) to carry out your exercises as if you were working in your host machine file system.

## Mapping a local folder

Docker volumes allow to map locations from your docker containers to folders on your host. If you want to keep your exercises locally, you should run your containers like:

```sh
docker run -it -v /your/local/path:/root/exercism/<track> alhuelamo/exercism:<track>
```

## Available Tracks

Use the following tags to access images for different tracks:

- Bash: `base`, `bash`
- Rust: `rust`
- C++: `cpp`
- Scala: `scala`
- Go: `go`
