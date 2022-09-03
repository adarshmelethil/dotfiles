#!/usr/bin/env bash

# Homebrew
if ! which brew; then
    echo "Installing brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! which jabba; then
    echo "installing jabba"
    # Java version manager
    export JABBA_VERSION=0.11.2
    curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
fi

[ -s "/Users/adarsh.melethil/.jabba/jabba.sh" ] && source "/Users/adarsh.melethil/.jabba/jabba.sh"

# Java
jabba install graalvm-ce-java11@20.3.0
jabba use graalvm-ce-java11@20.3

# Clojure
brew install clojure/tools/clojure
brew install borkdude/brew/babashka
