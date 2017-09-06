case $- in *i*)
    [ -z "$TMUX" ] && exec tmux
esac
## Antigen
source /usr/local/share/antigen/antigen.zsh
# Paths
export PATH="/usr/local/sbin:$PATH"

## Antigen Bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen theme frisk
antigen apply

## Completions
fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customize to your needs...
# Bind Keys

## Press C-x twice to bring up command history
autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^X^X' history-beginning-search-menu

## Skip forward/back a word with opt-arrow
bindkey '[C' forward-word
bindkey '[D' backward-word

## Skip to start/end of line with cmd-arrow
bindkey '[E' beginning-of-line
bindkey '[F' end-of-line

## Delete word with opt-backspace/opt-delete
bindkey '[G' backward-kill-word
bindkey '[H' kill-word

## Delete line with cmd-backspace
bindkey '[I' kill-whole-line

## Preferences
export EDITOR='vim'

## Aliases
alias minneapolis='lynx -dump  "http://weather.unisys.com/forecast.php?Name=55409" | awk 'NR==56,NR==73''
alias copenhagen='lynx -dump "http://weather.unisys.com/forecast.php?Name=copenhagen" | awk 'NR==56,NR==73''
alias weather='lynx -dump  "http://weather.unisys.com/forecast.php?Name=55409" | awk 'NR==114,NR==164' | less'
alias clexit='clear && exit'
alias news="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/news.pls" # MPR News alias current="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/the_current.pls" 
## The Current
alias classical="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/classical.pls" # Classical MPR
alias localcurrent="mplayer -playlist http://minnesota.publicradio.org/tools/play/streams/local.pls" # Local Current
alias refreshItunes='open -a iTunes /Volumes/Aramis/Music'
alias update='brew update && brew upgrade && sh cask-upgrade && softwareupdate -ia'
alias tb='mosh trophyboyfriend@10.0.0.100'
alias home='ssh trophyboyfriend@73.65.114.101'
alias vnctunnel='ssh -L 5900:localhost:5900 trophyboyfriend@73.65.114.101'
alias poorVPN='ssh -C -D 1080 trophyboyfriend@73.65.114.101'
alias defcon='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &'

## Fancy ass variables and startup
#fortune | cowsay -f stegosaurus
lynx -dump  "http://weather.unisys.com/forecast.php?Name=55416" | awk 'NR==56,NR==73'

