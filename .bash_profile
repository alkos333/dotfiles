#!/bin/bash

# Make sure to source for login shells as well
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=~/dev/activator/bin:$PATH
