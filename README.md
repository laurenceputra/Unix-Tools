#Script(s) I wrote to make my life easier

##memory_limit.sh
To be used as a cronjob to monitor the app

###Sample Rule for cronjob
    */5 * * * * $HOME/memory_limit.sh

##print.sh (For School of Computing, NUS only)
Figures out which printer in front of tech svcs has the smallest amount of jobs backlog and sends job to that printer. Deletes printed files afterwards.

Script has to be run on Sunfire
###How to use
1. Download print.sh into a directory of your choice.
2. Create a folder to_print in the same directory as print.sh
3. Run the following command `chmod 700 print.sh`
4. Run the script by typing `./print.sh`
