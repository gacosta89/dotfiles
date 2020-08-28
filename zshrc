source ~/dotfiles/powerline/.powerlevel9kenv
source ~/bin/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle cp
antigen bundle node
antigen bundle nvm
antigen bundle sudo
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions


# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
# Tell antigen that you're done.
antigen apply


# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

if [[ $TERM = dumb ]]; then
  unset zle_bracketed_paste
fi

export VISUAL=vim
export EDITOR="$VISUAL"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="${HOME}/.composer/vendor/bin:/usr/local/opt/php@7.3/sbin:/usr/local/opt/php@7.3/bin:/usr/local/opt/mysql-client/bin:${HOME}/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home
[ -f "/Users/gonzaloacosta/.ghcup/env" ] && source "/Users/gonzaloacosta/.ghcup/env" # ghcup-env
