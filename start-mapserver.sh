#!/bin/sh

VERSION=latest

docker run --rm -it \
	-v $(pwd)/data:/world \
  -w /world \
  --network host \
  minetestmapserver/mapserver:${VERSION}
