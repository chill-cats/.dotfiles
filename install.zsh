#!/usr/bin/env zsh

linuxInstall() {
    echo "Linux is not supported right now, I will add linux support when I switch to linux"
}

checkBrewInstall() {
    if ! [ -x $(command -v brew) ]; then
        return true
    else
        return false
    fi
}

installHomeBrew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

installDependencyBrew() {
    dependencies=(
        kitty
        nvim
        )

    for dependency in ${dependencies[@]}; do
        if ! [ -x $(command -v $dependency) ]; then
            echo "Installing $dependency"
            brew install $dependency
        else
            echo "$dependency is already installed"
        fi
    done
}

macOSInstall() {
    if ! [ checkBrewInstall ] && read -q "choice?Brew is not installed, do you want to install Homebrew now?"; then
        echo
        installHomeBrew
    else
        echo "Brew is installed"
    fi

    installDependencyBrew

}

unameOut="$(uname)"

if [[ $unameOut = "Darwin" ]]; then
    macOSInstall
elif [[ $unameOUt = "Linux" ]]; then
    linuxInstall
fi
