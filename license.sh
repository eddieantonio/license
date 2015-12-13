#!/bin/sh

# Adds a LICENSE file to the current directory, based on using GitHub's
# choosealicense.com

usage() {
    printf $0
    printf " $(tput smul)license$(tput rmul)"
    printf " [$(tput sitm)year$(tput ritm)"
    printf " [$(tput sitm)full name$(tput ritm) ...]]"
    echo
}

# Make sure the license is given.
if [ $# -lt 1 ]; then
    usage 1>&2
    exit 1
fi

# Ensure 'LICENSE' doesn't exist.
if [ -f LICENSE ]; then
    echo "$0: will not overwrite existing LICENSE file" 1>&2
    exit 2
fi

license=$1

# If the year is not given on the command line...
if [ -z ${2+x} ]; then
    # Generate it
    year=`date +%Y`
else
    year=$2
fi

# If the name is not given on the command line...
if [ -z ${3+x} ]; then
    # If the environment variable isn't set...
    if [ -z ${LICENSE_OWNER+x} ]; then
        # Last resort: use the logged-in username
        fullname=$USER
    else
        fullname=$LICENSE_OWNER
    fi
else
    # Get rid of the first two arguments...
    shift; shift
    fullname=$@
fi

url=https://github.com/github/choosealicense.com/raw/gh-pages/_licenses/${license}.txt

fetch_it() {
    curl -sL $url
}

substitute_it() {
    tail -n+2 | awk 'p; /---/ {p=1}' | tail -n+2 |\
    sed -e 's/\[year\]/'"$year"'/' \
        -e 's/\[fullname\]/'"$fullname"'/'
}

fetch_it | substitute_it > LICENSE
