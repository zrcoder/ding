#! /bin/bash

function serve() {
    THEME_DIR=themes/hugo-theme-learn

    if [ -d ${THEME_DIR} ]; then
        echo "Theme exists";
    else
        echo "Need download the theme firstly"
        mkdir -p themes
        cd themes
        git clone https://github.com/matcornic/hugo-theme-learn
        cd ..
    fi

    hugo serve -t hugo-theme-learn
}

serve
