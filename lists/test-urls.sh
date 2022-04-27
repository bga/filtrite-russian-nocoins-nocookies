#!/bin/env bash
set -eu -o pipefail

cat $1 | grep -v '^\#' | grep -v '^$' | while read url; do 
	echo -n "$url "
	curl -s -L --head "$url" | head -1
done
