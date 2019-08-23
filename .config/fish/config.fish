# required for gpg-agent to prompt for passwords
set -gx GPG_TTY $(tty)


set EDITOR nvim
set BROWSER chrome.exe
set MANAGER explorer.exe

abbr vim nvim
alias code code-insiders


fish_vi_key_bindings

set -gx PATH "/mnt/c/Program Files (x86)/Google/Chrome/Application" $PATH
set -agx PATH $HOME/bin

