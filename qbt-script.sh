#!/bin/sh

# Paths
SCRIPT="/mnt/HDD/Documents/filebotscripts/amc2.groovy"
OUTPUT="/mnt/HDD/Nedlastninger"

# Formats
MOVIE="/mnt/HDD/Filmer/{n} ({y})/{n} ({y})"
DOC="/mnt/Div/Documentaries/{n} ({y})/{n} ({y}){' CD'+pi}{'.'+lang}"
SERIES="/mnt/TV/{n}/Season {s.pad(2)}/{n} - {s00e00} - {t}{'.'+lang}"
MINI="/mnt/Div/Mini-Series/{n}/{n} - {s00e00} - {t}{'.'+lang}"

# Plex
PLEX="192.168.1.170:your_key"

# Input Parameters
ARG_PATH=$1
ARG_NAME=$2
ARG_LABEL=$3


filebot -script $SCRIPT --output=$OUTPUT --action duplicate --conflict skip -non-strict --log-file amc.log --def unsorted=y clean=y extractFolder=$OUTPUT plex=$PLEX movieFormat=$MOVIE docFormat=$DOC seriesFormat=$SERIES miniFormat=$MINI ut_dir="$ARG_PATH" ut_kind="multi" ut_title="$ARG_NAME" ut_label="$ARG_LABEL"
