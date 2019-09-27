#!/usr/bin/env bash

BASEDIR=$(dirname "$0")

if [ -d "$BASEDIR/../application" ]
then
    echo "Directory /application exists."
else
    mkdir $BASEDIR/../application
    echo "<?php phpinfo();" >> $BASEDIR/../application/index.php
    echo 'Application folder with phpinfo created'
fi

if [ -d "$BASEDIR/../data" ]
then
    echo "Directory /data exists."
else
    mkdir $BASEDIR/../data
    mkdir $BASEDIR/../data/mysql
    echo 'Data folder created'
fi

if [ -d "$BASEDIR/../logs" ]
then
    echo "Directory /logs exists."
else
    mkdir $BASEDIR/../logs
    mkdir $BASEDIR/../logs/apache
    mkdir $BASEDIR/../logs/mysql
    mkdir $BASEDIR/../logs/php
    echo 'Logs folder created'
fi
