# Profile file. Runs on ZSH login. Environmental variables are set here.

export ZDOTDIR="$HOME"

upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
secs=$((${upSeconds}%60))
mins=$((${upSeconds}/60%60))
hours=$((${upSeconds}/3600%24))
days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh %02dm %02ds" "$days" "$hours" "$mins" "$secs"`

# get the load averages
read one five fifteen rest < /proc/loadavg

echo "$(tput setaf 2)
`date +"%A, %e %B %Y, %r"
`$(tput setaf 3)
`uname -srmo`
`grep "PRETTY_NAME" /etc/os-release | cut -d '=' -f2 | tr -d '"'`$(tput setaf 6)
 Uptime.............: ${UPTIME}
 Memory.............: `cat /proc/meminfo | grep MemFree | awk {'print $2'}`kB (Free) / `cat /proc/meminfo | grep MemTotal | awk {'print $2'}`kB (Total)
 Load Averages......: ${one}, ${five}, ${fifteen} (1, 5, 15 min)
 Running Processes..: `ps ax | wc -l | tr -d " "`
 IP Addresses.......: `ip a | grep glo | awk '{print $2}' | head -1 | cut -f1 -d/` and `wget -q -O - http://icanhazip.com/ | tail`
 Weather............: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?locCode={{ location_state_abbr }}|{{ location_city }}" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
$(tput sgr0)"
apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[([\w,\-,\d,\.,~,:,\+]+)\]\s\(([\w,\-,\d,\.,~,:,\+]+)\)? /i) {print "PROGRAM: $1 INSTALLED: $2 AVAILABLE: $3\n"}'