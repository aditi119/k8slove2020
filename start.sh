#!/bin/bash

if [ "$x" == "webapp1" ]
then
        cp  -rf  /mycode/webpp1/*   /var/www/html/
        httpd -DFOREGROUND
elif [ "$x" == "webapp2" ]
then
        cp  -rf /mycode/webapp2/*  /var/www/html/
        httpd -DFOREGROUND
else
        echo "sorry" > /var/www/html/index.html
        httpd -DFOREGROUND
fi