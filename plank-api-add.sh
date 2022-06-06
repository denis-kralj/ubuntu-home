#!/bin/bash
today=`date +"%Y-%m-%d"`

curl -i -s -X 'POST' --data-binary "started=$today&lasted=$1&psk=$PLANK_TOKEN" $PLANK_API_ENDPOINT