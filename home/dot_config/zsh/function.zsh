whichbrew=$(which brew)

function brew() {
    if [[ $1 == "install" ]]; then
        echo "----- start: brew install -----"
        $whichbrew "$@"
        echo "----- end: brew install -----"

        echo "----- start: brew autoremove -----"
        $whichbrew autoremove
        echo "----- end: brew autoremove -----"

        echo "----- start: Generate Brewfile -----"
        if [[ -n $HOMEBREW_BUNDLE_FILE ]]; then
            $whichbrew bundle dump --force --describe
        else
            echo "Impossible to generate Brewfile, HOMEBREW_BUNDLE_FILE isn't set"
        fi
        echo "----- end: Generate Brewfile -----"
    else
        $whichbrew "$@"
    fi
}
