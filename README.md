#curl-to-pipe-to-graphite
#Wraps our curl polling script to pipe-to-graphite(https://github.com/iFixit/pipe-to-graphite)

Prerequisites:  These scripts assume you have a graphite server up and running ready to receive the stats on port 2003.

Usage:

1. Update the pipe-to-graphite.sh script with your graphite server.
2. Update wrapper.sh all your proxy hosts you wish to gather stats from to the gatherstats function
3. Run the wrapper.sh (./wrapper.sh &) script and send to background.  You should start seeing data within graphite. 
