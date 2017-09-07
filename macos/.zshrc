
# #TODO(4lex1v) :: Need to add the check for ZSH configuration

###############################################################################################
## Essentials
###############################################################################################

export TERM=xterm-256color
export LANG=en_US.UTF-8
export EDITOR=emacs

#
# :: ZSH Configuration ::
# 
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git scala sbt docker)
source $ZSH/oh-my-zsh.sh
echo "ZSH configured..."

##
# Preparing the env
#
export HOMEBREW_PREFIX=/usr/local/homebrew

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_131)
echo "Settings JAVA_HOME to [$JAVA_HOME]"

## GNU Global tagging configuration
#export GTAGSCONF=/usr/local/share/gtags/gtags.conf
#export GTAGSLABEL=ctags

###############################################################################################
## PATH Configuration
###############################################################################################

# #NOTE(4lex1v) :: For some reason have a QT configuraiton here... Commenting out for now
#export PATH="/usr/local/opt/qt/bin:$PATH"

#
# :: LLVM & Clang compiler configuration. ::
#
# This prevails the default Clang compiler from Apple that comes with XCode, wonder if this would
# cause any potential build issues?
echo "Using manuall Clang compiler from LLVM..."
export PATH="/usr/local/opt/llvm/bin:$PATH"



###############################################################################################
## Additional Plugins
###############################################################################################

#
# :: ZSH Synthax Highlighting ::
#
echo "Loading the ZSH synthax highliting..."
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# :: ZSH Synthax Highlighting ::
#
echo "Configuring autojump package..."
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source $HOME/.dotfiles/macos/aliases
