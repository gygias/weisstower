# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

# built-in
PS1="[\t] \u@\h \W\$ "
PATH="$PATH:$HOME/bin"

data="/cygdrive/f/"
dvd="/cygdrive/e/"
pf="/cygdrive/c/Program Files (x86)"
pf64="/cygdrive/c/Program Files"

cd "$USERPROFILE"

alias qqq="/cygdrive/c/Windows/system32/cmd /C taskkill /F /IM mintty.exe"
alias open="/usr/bin/cygstart" # emulates mac os open
alias ditto="cp"
alias sb="cd \"$USERPROFILE/sandbox\""
alias mbp="ssh -l david 10.0.1.4"
alias pf="cd \"$pf\""
alias pf64="cd \"$pf64\""

if [[ ! -e /Volumes/c ]]; then
    mkdir -p /Volumes
    cd /Volumes
    ln -s /cygdrive/c
    ln -s c Windows
    ln -s /cygdrive/f
    ln -s f Data
    ln -s /cygdrive/x
    ln -s /cygdrive/q
    ln -s /cygdrive/z
fi
