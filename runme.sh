#!/bin/bash

for i in *; do
  [ ! -d $i ] && continue
  ./dns-autopen.sh sign-zone $i
  ./dns-autopen.sh reload-zone $i

done
