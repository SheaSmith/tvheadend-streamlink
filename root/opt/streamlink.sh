#!/bin/bash
streamlink --stdout --quiet -decryption_key "$2" "$1" best
