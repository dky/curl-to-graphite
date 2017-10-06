# Curl-to-pipe-to-graphite

I needed a way to scrape our proxies and send curl web statistics to graphite.  Rather than re-inventing the wheel I came up with a wrapper 
to send curl stats using the pipe-to-graphite tool from ifixit. (https://github.com/iFixit/pipe-to-graphite)

Prerequisites:  These scripts assume you have a graphite server up and running ready to receive the stats on port 2003.

## Usage:

1. Clone the iFixit pipe-to-graphite project. 
2. Copy the pipe-to-graphite.sh to the relative directory of curl.sh and wrapper.sh
3. Update the pipe-to-graphite.sh script with your graphite server.
4. Update wrapper.sh all your proxy hosts you wish to gather stats from to the gatherstats function
5. Run the wrapper.sh (./wrapper.sh &) script and send to background.  You should start seeing data within graphite. 
