#!/bin/bash

# Command to add all boot log messages priorities for alert and higher
journalctl -p alert -b

#Command to check size of the the system disk journal for the most recent boot
journalctl --disk-usage

#Command to remove all archived journals except the most recent two
journalctl --vacuum-files=2

