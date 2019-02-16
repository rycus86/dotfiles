# Set the prompt
PS1_LASTEXIT='\[$([ $? != 0 ] && printf "\[\033[01;31m\]!\[\033[00m\] ")\]'
PS1_USER='\[\033[00;31m\]\u\[\033[00m\]'
PS1_WORKDIR='\[\033[01;36m\]\w\[\033[00m\]'
PS1_GITDIR='\[$(  path=$(pwd); \
                  while [ "$path" != "/" ] && [ ! -f "${path}/.git/HEAD" ]; do \
                      path=$(dirname "$path"); \
                  done; \
                  [ -f ${path}/.git/HEAD ] && ( \
                      printf "(\[\033[01;32m\]"; \
                      cat "${path}/.git/HEAD" | sed "s#ref: refs/heads/##" | tr -d "\n"; \
                      printf "\[\033[00m\]) " \
                  ) || :  \
               )\]'
export PS1="${PS1_LASTEXIT}${PS1_USER} @ ${PS1_WORKDIR} ${PS1_GITDIR}"'\$ '

# No duplicates in the history
export HISTCONTROL=ignoreboth:erasedups

# Change to the home directory (not in IntelliJ or VSCode)
if echo "$TERMINAL_EMULATOR" | grep "^JetBrains" >/dev/null; then
    : # keep the current path
elif echo "$TERM_PROGRAM" | grep "^vscode" >/dev/null; then
    : # keep the current path
else
    cd ~
fi

# Export environment variables
. "${HOME}/.exports"

