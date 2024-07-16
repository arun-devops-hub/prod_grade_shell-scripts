#!/bin/bash
log_file="/var/log/apache2/access.log"
# Analyze web server log to count unique IP addresses
awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr
echo "Web server log analyzed."

<<arun
awk '{print $1}' "$log_file":

awk is a versatile text-processing utility in Unix/Linux.
'{print $1}' specifies to print the first column ($1) of each line.
"$log_file" is a variable holding the filename or path of the log file.
| sort:

The pipe (|) sends the output of the awk command as input to sort.
sort arranges lines of text alphabetically by default (lexicographical order).
| uniq -c:

Another pipe (|) sends the sorted output to uniq -c.
uniq -c counts the occurrences of each unique line and prefixes each output line with the count of occurrences.
| sort -nr:

The final pipe (|) sends the output to sort -nr.
sort -nr sorts the output numerically (-n) in descending order (-r), based on the counts obtained from uniq -c.
arun
