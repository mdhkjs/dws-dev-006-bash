# dws-dev-006-bash
This bash script let you try a command repeatedly in an interval. The script will exit with success code 0 once the given command successfully has been run and if the given command can not be run it will try to run it in an interval. User should specify the interval and the number of repeating by -i and -n flags. There is another way to say interval and number of repeating to script by evironment variables: $TRY_INTERVAL, $TRY_NUMBER=, $TRY_COMMAND=NULL. And if no argumemts passed to it, it will use these defualt values: TRY_INTERVAL=5 TRY_NUMBER=12 TRY_COMMAND=NULL. If all of tries be failed the script exit with code 1.

[@dwsclass](https://github.com/dwsclass) dws-dev-006-bash
