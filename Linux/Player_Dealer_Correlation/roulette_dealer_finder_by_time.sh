#!/bin/bash

grep -ir "$1.*$2"  $3_Dealer_schedule | awk -F , '{print $1,$2,$3,$4}'
