#!/usr/bin/env bash

BPANLIB="$(
  shopt -s nullglob globstar
  set -- $PWD/**/{bin,lib}
  IFS=':'; echo "$*"
)"
PATH="$BPANLIB:$PATH"

source bpan :std

use Test::More
