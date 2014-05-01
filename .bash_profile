alias ll='ls -alg'
alias ppm='cd ~/work/pp'
alias grep='grep --color=auto'
alias mn='cd ~/work/pp'
alias rmdockim="docker images | grep none | awk {'print $3'} | xargs docker rmi"

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
export EDITOR=/usr/bin/vim

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k
#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad

   cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'


alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
              echo -e "\nYou are logged on ${RED}$HOST"
                      echo -e "\nAdditionnal information:$NC " ; uname -a
                              echo -e "\n${RED}Users logged on:$NC " ; w -h
                                      echo -e "\n${RED}Current date :$NC " ; date
                                              echo -e "\n${RED}Machine stats :$NC " ; uptime
                                                      echo -e "\n${RED}Current network location :$NC " ; scselect
                                                              echo -e "\n${RED}Public facing IP Address :$NC " ;myip
                                                                      #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
                                                                              echo
                                                                                  }

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'


