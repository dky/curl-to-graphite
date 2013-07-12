#!/bin/bash
#cURL script to send stats to pipe-to-graphite.  There should be no need to modify this unless you don't run a proxy.  Run the wrapper.sh script instead.

proxy_host=$1 
proxy_port='3128'
url=$2
hostname=`hostname -s`
curl=/usr/bin/curl
domain=$(echo "$url" | awk -F. '{ print $2 }')

$curl -w "$hostname.$proxy_host.$domain.time_namelookup %{time_namelookup}\n\
$hostname.$proxy_host.$domain.time_connect %{time_connect}\n\
$hostname.$proxy_host.$domain.time_pretransfer %{time_pretransfer}\n\
$hostname.$proxy_host.$domain.time_starttransfer %{time_starttransfer}\n\
$hostname.$proxy_host.$domain.time_starttransfer %{time_starttransfer}\n\
$hostname.$proxy_host.$domain.bps_speed_download %{speed_download}\n\
$hostname.$proxy_host.$domain.time_total %{time_total}\n" -o /dev/null -x $proxy_host:$proxy_port -s $url
