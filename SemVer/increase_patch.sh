#!/bin/bash
set -euo pipefail

usage="Usage error: increase_patch.sh [SEM_VER_VERSION]"

if [ $# -ne 1 ]; then
   echo "${usage}"
   exit 1
fi

SEM_VER_VERSION=${1}

NEW_VERSION="${SEM_VER_VERSION%.*}.$((${SEM_VER_VERSION##*.}+1))"

echo "${NEW_VERSION}"



# Regexpless solution - cut off last dot and whatever follows it:
# versionShort=${versionNumber%.*}

# product_version=$(semVer -productVersion)
# semver=( ${product_version//./ } )
# major="${semver[0]}"
# minor="${semver[1]}"
# patch="${semver[2]}"
# echo "${major}.${minor}.${patch}"