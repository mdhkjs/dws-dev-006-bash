#! /bin/bash

interval=${TRY_INTERVAL:-5}
number=${TRY_NUMBER:-12}
command=$TRY_COMMAND

while [[ "$#" ]]; do
    case $1 in
        -i)
                interval=$2
                shift 2
                ;;
        -n)
                number=$2
                shift 2
                ;;
        *) break;;
    esac
done

if [[ $# -ne 0 ]]; then
    command=$*
fi

if [[ $command == "" ]]; then
    echo "ERROR: Invalid command."
    exit 1
fi

for i in $(seq 1 $number); do
        $command
        if [[ $? -eq 0 ]]; then
                exit 0
        fi
        if [[ $i -ne $number ]]; then
                sleep $interval
        fi
done
echo "ERROR: Command failed."
exit 1
