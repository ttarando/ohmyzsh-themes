# Based on few other ohmyzsh themes including awesomepanda, bira and others

local return_status_indicator='%(?:%{$fg[green]%}➜ %{$reset_color%}:%{$fg[red]%}➜ %{$reset_color%})'
# if using RPTOMPT with exit code
#local return_code_and_indicator="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='# '
else
    local user_host='%{$fg[green]%}%n@%m %{$reset_color%}'
    local user_symbol='$ '
fi

local current_dir='%{$fg[cyan]%}%~ %{$reset_color%}'

local git_branch='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}%B\uE0A0%b%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}●"

ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[red]%}"
ZSH_PROMPT_BASE_COLOR="%{$fg[blue]%}"

local rvm_ruby='$(ruby_prompt_info)'
ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="› %{$reset_color%}"

local venv_prompt='$(virtualenv_prompt_info)'
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$terminfo[bold]$fg[magenta]%}‹"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX
ZSH_THEME_VIRTUALENV_SUFFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX

# Hopefully SVN is no longer needed
#local svn_info='$(svn_prompt_info)'
#ZSH_THEME_SVN_PROMPT_PREFIX="svn:("
#ZSH_THEME_SVN_PROMPT_SUFFIX=")"
#ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%} ✘ %{$reset_color%}"
#ZSH_THEME_SVN_PROMPT_CLEAN=" "


PROMPT="${return_status_indicator}${venv_prompt}${rvm_ruby}${current_dir}${git_branch}${user_symbol}"
#PROMPT="${return_status_indicator}${user_host}${current_dir}${rvm_ruby}${git_branch}${svn_info}${venv_prompt} ${user_symbol} "
#RPROMPT="%B${return_code}%b"
