#!/bin/bash
backup_dir="/path/to/backup"
source_dir="/path/to/source"
# Create a timestamped backup of the source directory
tar -czf "$backup_dir/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
"$source_dir"


#%Y: Year in four digits (e.g., 2024)
#%m: Month in two digits (01-12)
#%d: Day in two digits (01-31)
#%H: Hour in two digits (00-23)
#%M: Minute in two digits (00-59)
#%S: Second in two digits (00-59)
