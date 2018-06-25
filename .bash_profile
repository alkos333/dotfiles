#!/bin/bash

# Make sure to source for login shells as well
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=~/dev/activator/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/alysenk/.sdkman"
[[ -s "/Users/alysenk/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/alysenk/.sdkman/bin/sdkman-init.sh"
