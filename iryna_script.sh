#!/bin/bash
date=1
while true
do
    touch "/OneDrive/Документи/ziyotek/bash_scripts/bash.scripts-$date"
        echo "Creating a new file "bash.scripts-$date"";
        ((date++))
        sleep 5
    done