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
alias cala="vim ~/.config/alacritty/alacritty.yms"
alias cpoly="vim ~/.config/polybar/config"
alias foto="cd /run/media/storage/Archive/Foto"
alias rgr="ranger"
alias vi="vim"
alias p="sudo pacman"
alias pa="paru"
alias ls="ls -a --color=always --group-directories-first"
alias lsa="exa -la --color=always --group-directories-first"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Git Alias
alias config='/usr/bin/git --git-dir=/home/tudorcelstan/dotfiles/ --work-tree=/home/tudorcelstan'
