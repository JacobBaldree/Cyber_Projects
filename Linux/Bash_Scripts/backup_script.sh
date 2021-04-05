#!/bin/bash


# Free memory output
free -h > ~/backups/freemem/free_mem.txt

# Disk usage output
df -h > ~/backups/diskuse/diskuse.txt

# List open files
lsof > ~/backups/openlist/open_list.txt

# Free disk space
df -h /
