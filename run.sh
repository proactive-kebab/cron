#! /bin/bash

wget -r -nH https://crontab.guru/
curl -O https://crontab.guru/favicon.ico
for i in $(egrep -l -r "https://[a-zA-Z0-9.]*/" --exclude=\*.sh .)
do 
  sed -i -e "s#https://[a-zA-Z0-9.]*/#https://notexist/#g" $i
done

for i in $(egrep -l -r "platform.twitter.com" --exclude=\*.sh .)
do 
  sed -i -e "s#platform.twitter.com#notexist#g" $i
done
