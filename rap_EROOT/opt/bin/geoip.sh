#!/usr/bin/env bash

mkdir -p ~/projects/geoip
pushd  ~/projects/geoip
wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
gunzip GeoIP.dat.gz

wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
gunzip GeoLiteCity.dat.gz
mv GeoLiteCity.dat GeoIPCity.dat
popd
geoiplookup -d ~/projects/geoip  8.8.8.8

# npm install -g @rafaelrinaldi/whereami
# curl freegeoip.net/xml/72.4.9.242
# curl ipinfo.io
# #!/bin/sh
# curl -s http://freegeoip.net/json/$1|jq -r '.country_name,.latitude,.longitude'
