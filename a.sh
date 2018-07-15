#!/bin/bash

exec docker run \
  -it \
  --rm \
  -p 3000:3000  \
  -v $(pwd):/opt \
  -v $HOME/.m2:/home/docker/.m2 \
  lunchtime bash
