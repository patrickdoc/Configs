#!/bin/bash

# Originally written by Zombie Feynman (#1886944), a Curious Character.
# Tweaked and updated for Jenkins build system by NeppyMan (#1232476).

# Download the latest build ...
LATEST=$(curl ci.kolmafia.us/job/Kolmafia/lastSuccessfulBuild/artifact/dist/ | grep -Eo 'KoLmafia-[0-9]+.jar' | head -1)

# Check whether the current build is already present. If it is, don't bother downloading it again.

if [ -f $LATEST ]
then
    echo "Latest KoLmafia build already present." 
else
    echo "Fetching latest KoLmafia build."
    curl -O http://ci.kolmafia.us/job/Kolmafia/lastSuccessfulBuild/artifact/dist/$LATEST

    # Dump all but the most recent (to avoid filling up the directory) ...
    ls -r KoLmafia-*.jar | tail -n +2 | xargs rm -f
fi

# Launch the newest build on-hand ...
java -jar $LATEST &>/dev/null &disown

exit 0
