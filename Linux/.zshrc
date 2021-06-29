# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster-conda"
# ZSH_THEME="rkj-conda"

### Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

### Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

### Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

### Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

### Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

### Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

### Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

### Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

### Uncomment the following line if you want to disable marking untracked files
### under VCS as dirty. This makes repository status check for large repositories
### much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

### Uncomment the following line if you want to change the command execution time
### stamp shown in the history command output.
### The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

### Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

### Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
### Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
### Example format: plugins=(rails git textmate ruby lighthouse)
### Add wisely, as too many plugins slow down shell startup.
plugins=(history zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source /home/tboudreaux/Programming/ssh-connect/ssh-connect.sh

autoload -U colors && colors

# source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
# autoload -Uz add-zsh-hook
# add-zsh-hook precmd histdb-update-outcome


### Load extra path and alieas info added by Thomas
# source "${HOME}/.exports"
# source "${HOME}/.aliases"


### ITerm 2 shell integration
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

### ls color definitions
export LSCOLORS=GxFxCxDxcxegedabagacad

### Last Pass Agent timeout (never log out)
export LPASS_AGENT_TIMEOUT=0

### Conda env functions (see ./oh_my_zsh/completions/_cact.sh for autocomplete functions)
# function cactivate(){
#     source activate $1
# }
#
# alias dactivate(){
#     source deactivate
# }
#
# function clab(){
#     /Users/tboudreaux/Programing/condaZSH/cjupyter.py $1
# }
#
# function cenvs(){
# 	ls /anaconda/envs
# }
#
#
alias TODO="grep -rnw TODO | grep -v '\[x\]' | grep TODO"


export LD_LIBRARY_PATH="/usr/lib/openmpi/lib:/usr/local/cuda/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/mnt/p/d/Astronomy/GraduateSchool/SecondYearProject/DSEP/dsep_Brian/libs/free_eos-2.2.1/build/:$LD_LIBRARY_PATH"

export PATH="/home/tboudreaux/anaconda3/bin:$PATH"

export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

export ANDROID_HOME="/home/tboudreaux/applications/Android/Sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"

export PATH="/home/tboudreaux/Programming/bin:$PATH"
export PATH="/home/tboudreaux/.local/bin:$PATH"

export DSEPRoot="/mnt/p/d/Astronomy/GraduateSchool/SecondYearProject/DSEP/dsep_Thomas"
source /home/tboudreaux/Programming/conda-auto-env/conda_auto_env.sh

alias BoudreauxMail="mutt -f /mnt/p/d/Thomas/Backups/EmailBackups/BoudreauxMail/ContinuousBackup/"
alias UserMail="mutt -f /home/tboudreaux/mbox"
alias SystemMail="mutt"

alias CrashPlan="/usr/local/crashplan/bin/CrashPlanDesktop"

export EDITOR=vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\033' edit-command-line

# Setup Intel MKL enviromental variable
source /opt/intel/mkl/bin/mklvars.sh intel64 mod ilp64
# COMPILERVARS_ARCHITECTURE="intel64"
# . /opt/intel/bin/compilervars.sh -arch intel64
. /home/tboudreaux/anaconda3/etc/profile.d/conda.sh
