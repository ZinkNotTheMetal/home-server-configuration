#!/bin/bash

main () {
  log_file="/var/log/nut.log"

  log_date "==============================================================================="
  log_date "Powerdown event recieved from NUT master, initiating shutdown proceedure"
  log_date "home-shutdown.sh has been initiated"
  log_date "==============================================================================="

  shutdown_nas
  shutdown_host
  # shutdown_ups - want to check the timing

  log_date "==============================================================================="
  log_date "Complete home-shutdown.sh"
  log_date "==============================================================================="
}

shutdown_nas () {
  log_date "Initiated shutdown of Synology NAS by user: $USER"
  ssh -p {{ nas_ssh_port }} {{ nas_admin_user }}@{{ nas_ip }} poweroff
}

shutdown_host () {
  log_date "Initiated shutdown of $HOSTNAME by user: $USER"
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