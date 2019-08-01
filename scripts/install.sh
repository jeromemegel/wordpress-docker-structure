#!/usr/bin/env bash

BASEDIR=$(dirname "$0")

cd "$BASEDIR/../application"
echo "Downloading Wordpress ..."
wget https://fr.wordpress.org/wordpress-latest-fr_FR.tar.gz

if [ -f "index.php" ]
then 
	echo "Delete file index.php ..."
        rm index.php
else 
	echo "File index.php already deleted"
fi

echo "Extract Wordpress ..."
tar -zxvf wordpress-latest-fr_FR.tar.gz

echo "Move Wordpress ..."
mv wordpress/* .
mv wordpress/.* .

echo "Delete archive"
rm wordpress-latest-fr_FR.tar.gz
rm -Rf wordpress

echo "Apply rights"
chown -R www-data:www-data ../application
