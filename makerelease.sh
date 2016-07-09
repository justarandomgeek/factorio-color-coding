#!/bin/bash
# Run this script after committing an updated info.json to automatically tag the update and prepare a zip of it.

# Get mod name and version from info.json
# https://stedolan.github.io/jq/
jsonname=`cat info.json|jq .name`
jsonversion=`cat info.json|jq .version`

#hack to unquote strings
modname=$jsonname
modver=$jsonversion

# Create git tag for this version 
git tag $modver

# Prepare zip for Factorio native use and mod portal
git archive --prefix "$modname_$modver/" -o "$modname_$modver.zip" HEAD
