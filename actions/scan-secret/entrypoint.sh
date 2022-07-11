#!/bin/bash

GITLEAKS_CONFIG=""
TOOL_WORKINGPATH=""
TOOL_OUPUT=$3

# check if a custom config have been provided
if [ ! -z $1 ]; then
  GITLEAKS_CONFIG=" --config-path=$1"
fi

if [ ! -z $2 ]; then
  TOOL_WORKINGPATH=" --path=$2"
fi

gitleaks $TOOL_WORKINGPATH --redact $GITLEAKS_CONFIG --no-git --report=$TOOL_OUPUT --leaks-exit-code=0