#!/usr/bin/env bash

source ./scripts/variables.sh

MY_OUTPUT_FILE=../data/chemins-path.mbtiles

cd ./server && ruby server.rb $MY_OUTPUT_FILE