#!/bin/sh

usage() {
  cat << EOF
Usage: $(basename $0) TYPE SLUG

TYPE is content type
SLUG is page title
EOF
  exit 1
}

[ -z "$2" ] && usage
set -x
contenttype="$1"; shift
hugo new "${contenttype}/$*.md"
