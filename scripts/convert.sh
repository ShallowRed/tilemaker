#!/usr/bin/env bash

source ./scripts/variables.sh

tilemaker \
	--skip-integrity \
	--verbose \
	--input $FILTERED_INPUT_FILE \
	--output $OUTPUT_FILE \
	--merge