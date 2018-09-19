#!/bin/bash
for arg in "$@"; do
    if [ "$arg" = "push" ]; then
        ispush=1
    elif [ "$ispush" = 1 -a "$arg" = '-f' ] || [ "$ispush" = 1 -a "$arg" = '-force' ]; then
        echo "Hey Dave! Use this instead so you don't cause race conflicts in the repo: $(tput setaf 3)git push --force-with-lease$(tput sgr0)"
        exit 1
    fi
done

git "$@"