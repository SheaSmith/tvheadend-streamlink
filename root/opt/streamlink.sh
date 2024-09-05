#!/bin/bash
streamlink --stdout --quiet --hds-segment-threads 3 -decryption_key "$2" "$1" best
