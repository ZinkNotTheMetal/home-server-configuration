#!/bin/bash

# Fill in proper NAS variables below

main () {
  log_file="/home/william/poweroff.log"

  log_date "==============================================================================="
  log_date "Powerdown event recieved from NUT master, initiating shutdown proceedure"
  log_date "home-shutdown.sh has been initiated"
  log_date "==============================================================================="

  shutdown_nas
  shutdown_host

  log_date "==============================================================================="
  log_date "Complete home-shutdown.sh"
  log_date "==============================================================================="
}

shutdown_nas () {
  log_date "Initiated shutdown of Synology NAS by user: $USER"
  ssh -p 30122 {{ user_name}}@{{ nas_ip }} poweroff
}

shutdown_host () {
  log_date "Initiated shutdown of $HOSTNAME by UPSMON user: $USER"
  shutdown -h +1
}

shutdown_ups () {
  upsdrvctl stop
  upsdrvctl shutdown
}

log_date () {
  # logging function formatted to include a date
  echo -e "$(date "+%m/%d/%Y %H:%M:%S"): $1" >> "$log_file" #2>&1
}

main
