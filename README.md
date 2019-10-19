# screeps (Dockerized)

[![](https://img.shields.io/microbadger/layers/poeschl/screeps.svg)](https://microbadger.com/images/poeschl/screeps)
[![](https://img.shields.io/microbadger/image-size/poeschl/screeps.svg)](https://microbadger.com/images/poeschl/screeps)
[![](https://img.shields.io/docker/pulls/poeschl/screeps.svg)](https://hub.docker.com/r/poeschl/screeps)
[![](https://img.shields.io/github/license/poeschl/docker-screeps.svg?maxAge=3600)](https://github.com/poeschl/docker-screeps/blob/master/LICENCE)

Its [screeps/screeps](https://github.com/screeps/screeps) packed inside a docker container for easy startup.

# Usage

## Pure docker

Start it up with docker:

```sh
docker run -p 21025:21025 -p 21026:21026 -v "$(pwd)/data:/screeps" poeschl/screeps
```

This will start the screeps server and let it initalize a new world in the mapped folder.
If a world already exists, it won't be overriden.

__Make sure to insert your steam key into `.screepsrc` inside the data folder after the first start.__

### Custom commands

In case you want to execute custom commands like `npx screeps init` you can do it like this:

```sh
docker run -p 21025:21025 -p 21026:21026 -v "$(pwd)/data:/screeps" poeschl/screeps npx screeps init
```

## Docker-compose

This repository also holds a `docker-compose.yml` which can be used to start it up.

# Licence

The included screeps server is under [ISC Licence](https://github.com/screeps/screeps/blob/master/LICENSE.txt)