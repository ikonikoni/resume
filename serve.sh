#!/bin/bash

if [ -z "$(docker images | grep jekyll)" ]
then
    docker pull jekyll/jekyll
fi
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll jekyll build
