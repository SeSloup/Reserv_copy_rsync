#!/bin/bash

rsync -a --progress --delete --exclude=".*" ~ /tmp/backup


if [ $? = 1 ];
    then 
        logger -t "rsync_test script" "! unsuccess test"
    else
        logger -t "rsync_test script" "success test";
fi

