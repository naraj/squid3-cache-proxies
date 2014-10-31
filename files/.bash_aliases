clearcache() {
  sudo stop squid3
  sudo rm -rf /var/spool/squid3/*
  sudo squid3 -z
  sudo start squid3
}

clearlogs() {
  sudo stop squid3
  sudo rm -rf /var/log/squid3/*.log
  sudo start squid3
}

alias showlogs='sudo tail -f /var/log/squid3/access.log'
alias showcache='sudo ls /var/spool/squid3/'
