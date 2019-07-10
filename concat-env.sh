#!/bin/bash
# Reads an env file line by line and concatenates it to a single string var.
# Useful if you need to pass env vars via commandline, e.g. during Docker build.
# Author: Deric Walintukan

ERR_MESSAGE="$ ./concat-env.sh /path/to/.env"

# Env file validation
ENV_FILE=$1
if [ -z "$ENV_FILE" ]; then
    echo "env file not given"
    echo $ERR_MESSAGE
    exit 2
fi

# Concats all the env vars to single string
while read -r line
do
    ENV_VARS="$ENV_VARS $line"
done < "$ENV_FILE"

# Prints out the concatenated env vars
echo $ENV_VARS
