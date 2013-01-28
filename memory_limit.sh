#setup before running
#change `your_username` to your username
#change `your command here` to the command you are running
#if the if statement, change 25600 to the memory limit you are placing on the process in KB
#you may choose to restart the process by putting the command after `#you can start the process again here`

#kills process if memory usage exceeds 25MB
lineCount=`ps -u your_username -o pid,rss,command | grep "your command here" | grep -v grep | wc -l`
pid=`ps -u your_username -o pid,rss,command | grep "your command here" | grep -v grep | awk '{print $1}'`
rss=`ps -u your_username -o pid,rss,command | grep "your command here" | grep -v grep | awk '{print $2}'`
#modify the second condition to match the memory limit you are placing on the app you are running
if [ $lineCount -eq 1 ] && [ $rss -gt 25600 ]
then
        kill $pid
        echo "process killed"
        #you can start the process again here
else
	echo "process not killed"
fi