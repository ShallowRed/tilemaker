#!/usr/bin/env bash

source ./scripts/variables.sh

osmosis \
	--read-pbf-fast $RAW_INPUT_FILE \
	--tf accept-ways "highway=path,track" \
	--used-node \
	--bounding-box clipIncompleteEntities=true \
  --write-pbf $FILTERED_INPUT_FILE \