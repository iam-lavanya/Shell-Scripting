#!/bin/bash 

backup_dir="/path/to/backup diectory" 
source_dir="/path/to/source directory" 
 
tar -czf "$backup_dir/backup_$(date "+%Y-%m-%d %H:%M:%S").tar.gz)" "$source_dir" 

 
