#Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'
export $TERM="alacritty"
export BROWSER="qutebrowser"
PATH=$PATH:/home/tudorcelstan/scripts/
export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"

# History timestamps
HIST_STAMPS="dd.mm.yyyy"

# Vi mode in shell

bindkey -v
export KEYTIMEOUT=1

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Aliases
alias czsh="vim ~/.zshrc"
alias cvim="vim ~/.vimrc"
alias csx="vim ~/.config/sxhkd/sxhkdrc"
alias cbsp="vim ~/.config/bspwm/bspwmrc"
alias crofi="vim ~/.config/rofi/config.rasi"
alias crtheme="vim ~/.config/rofi/rofitheme-rasi"
alias cala="vim ~/.config/alacritty/alacritty.yml"
alias cpoly="vim ~/.config/polybar/config"
alias cter="vim ~/.config/termite/config"
alias cdp="cd /run/media/storage/Pictures"
alias cdm="cd /run/media/storage/Music"
alias cd.="cd ~/.config"
alias cdot="cd ~/dotfiles"
alias vtop="vtop --theme gooey"
alias rgr="ranger"
alias vi="vim"
alias p="sudo pacman"
alias pa="paru"
alias SS="sudo systemctl"
alias ka="killall"
alias cp="cp -v"
alias ssaveron="xset s on +dpms"
alias ssaveroff="xset s off -dpms"
alias ssaverstat="xset q"
alias ls="ls -a --color=always --group-directories-first"
alias lsa="exa -la --color=always --group-directories-first"
alias ff="fastfetch"
alias SS="sudo systemctl"
alias vm="optimus-manager --print-mode"
alias tmuxk="tmux kill-session -t"
alias tmuxl="tmux list-sessions"
alias tmuxa="tmux attach-session -t"
alias tshhmmss='date +%y%b%d-%H%M%S'
screenshot ()
{
       import -window root /run/media/storage/Pictures/Screenshots/$(tshhmmss)_screen.png
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /home/tudorcelstan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
