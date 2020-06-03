#!/bin/bash
#
if [[ -z $(which magick) ]]; then
  echo 'imagemagick not found -- please make sure it is installed!'
  exit
fi
#