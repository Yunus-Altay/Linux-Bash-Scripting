* * * * * <shell command>   # execute cron job every minute
0 1 * * * <shell command>   # execute cron job every day at 1 a.m.
* * 1 * * <shell command>   # execute every minute of the first day of every month
* * * 1 * <shell command>   # execute every minute in January
* * * * 6 <shell command>   # execute every minute on every saturday
0/5 3-4 * * 1 <command>     # execute every 5 minutes on Monday from 3 a.m. to 4 a.m
