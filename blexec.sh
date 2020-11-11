# bloatlang executor

if [[ "$1" -eq "" ]]; then
    echo "no file specified.";
    exit 1;
elif [[ ! -f "$1" ]]; then
    echo "cannot find file $1";
    exit 2;
else
    chmod u+x ./bltc.sh;
    ./bltc "$1";
    python3 "$(echo "$1" | sed "s/bl/py")";
fi;