#!/bin/bash
directory="/path/to/cleanup"
# Remove files older than 7 days in specified directory
find "$directory" -type f -mtime +7 -exec rm {} \;
echo "Old files removed."


<<arun
find "$directory":

The find command is used to search for files and directories within the specified $directory.
-type f:

Specifies that find should only search for regular files (not directories or special files like symbolic links).
-mtime +7:

Limits the search to files that were last modified more than 7 days ago.
The +7 means more than 7 days. To find files modified exactly 7 days ago, you would use -mtime 7.
-exec rm {} \;:

Executes the rm (remove) command on each file found by find.
{} is a placeholder that find replaces with the path of each file.
\; terminates the -exec command.
arun
