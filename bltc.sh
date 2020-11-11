# bloatlang compiler

if [[ ! "$1" -eq "" || ! "$1" -eq "
" ]]; then
    for FILE in ./*.bl; do
        cp "$FILE" "$(echo "$FILE" | sed "s/bl/py/g")";
        echo "$FILE => $(echo "$FILE" | sed "s/bl/py/g")";
    done;
elif [[ ! -f "$1" ]]; then
    echo "cannot find file $1";
else
    FILE = "$1";
    cp "$FILE" "$(echo "$FILE" | sed "s/bl/py/g")";
fi;