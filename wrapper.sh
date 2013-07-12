#!/bin/bash
#Wrap curl.sh script to pipe-to-graphite.sh (https://github.com/iFixit/pipe-to-graphite)

function gatherstats () {
	  proxy=$1
	 ./pipe-to-graphite.sh "./curl.sh $proxy www.cnn.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.huffingtonpost.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.yahoo.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.gizmodo.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.engadget.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.techcrunch.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.google.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.flightsafety.com"
         ./pipe-to-graphite.sh "./curl.sh $proxy www.nytimes.com"
}

gatherstats proxy01
gatherstats proxy02
gatherstats proxy03
