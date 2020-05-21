#!/bin/bash
free >> ~/Backups/freemem/free_mem.txt
du >> ~/Backups/diskuse/disk_usage.txt
lsof >> ~/Backups/openlist/diskusage.txt
df -h >> ~/Backups/freedisk/freedisk.txt
