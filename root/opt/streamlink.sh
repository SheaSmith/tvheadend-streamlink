#!/bin/bash
streamlink --stdout -decryption_key "$2" "$1" best
