#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

RAW_INPUT_FILE=./data/basse-normandie-latest.osm.pbf
# RAW_INPUT_FILE=./data/france-latest.osm.pbf
# RAW_INPUT_FILE=./data/belgium-latest.osm.pbf

FILTERED_INPUT_FILE=./data/basse-normandie-latest-filtered.osm.pbf
# FILTERED_INPUT_FILE=./data/france-latest-filtered.osm.pbf
# FILTERED_INPUT_FILE=./data/belgium-latest-filtered.osm.pbf

# OUTPUT_FILE=./data/chemins-path.mbtiles
# OUTPUT_FILE=./data/chemins-track-short.mbtiles
OUTPUT_FILE=./data/chemins-track-long.mbtiles