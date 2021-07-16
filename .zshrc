#Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
      fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/tudorcelstan/.oh-my-zsh"
export $TERM="alacritty"
PATH=$PATH:/home/tudorcelstan/scripts/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update
# (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts
# (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# History timestamps
HIST_STAMPS="dd.mm.yyyy"

# Oh-my-zsh plugins
plugins=(git
         zsh-autosuggestions
         zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

bindkey -v
export KEYTIMEOUT=1
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor 
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Aliases
alias czsh="vim ~/.zshrc"
alias cohmyzsh="vim ~/.oh-my-zsh"
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
alias vm="optimus-manager --print-mode"
alias tmuxk="tmux kill-session -t"
alias tmuxl="tmux list-sessions"
alias tmuxa="tmux attach-session -t"
alias tshhmmss='date +%y%b%d-%H%M%S'
screenshot ()
{
       import -window root /run/media/storage/Pictures/Screenshots/$(tshhmmss)_screen.png
}
alias SS="sudo systemctl"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Git Alias
alias config='/usr/bin/git --git-dir=/home/tudorcelstan/dotfiles/ --work-tree=/home/tudorcelstan'
