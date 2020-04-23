#!/bin/sh

MINETEST_VERSION=5.2.0

docker run --rm -it \
  -u root:root \
	-v $(pwd)/minetest.conf:/etc/minetest/minetest.conf:ro \
	-v $(pwd)/worldmods:/root/.minetest/worlds/world/worldmods \
	-v $(pwd)/data:/root/.minetest/worlds/world \
  --network host \
	registry.gitlab.com/minetest/minetest/server:${MINETEST_VERSION}
