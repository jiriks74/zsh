# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# Some basic env setup
export PATH=$PATH:/home/$USER/.local/bin
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export YSU_MESSAGE_POSITION="after"

# Load aliases and shortcuts if existent.
[ -f "$HOME/zsh/aliasrc" ] && source "$HOME/zsh/aliasrc"

# Initialize `thefuck`
if command -v thefuck &> /dev/null
then
  eval $(thefuck --alias)
fi

# Load ; should be last.
source $HOME/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source $HOME/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source $HOME/zsh/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
source $HOME/zsh/git/git.plugin.zsh 2>/dev/null
source $HOME/zsh/ssh-connect/ssh-connect.sh 2>/dev/null
source $HOME/zsh/web-search/web_search.plugin.zsh 2>/dev/null
source $HOME/zsh/oh-my-zsh-dirhistory/dirhistory.plugin.zsh 2>/dev/null
source $HOME/zsh/zsh-z/zsh-z.plugin.zsh 2>/dev/null
#source /usr/share/autojump/autojump.zsh 2>/dev/null
alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"
