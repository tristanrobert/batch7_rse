#!/bin/sh

set -e

cmd="$@"

>&2 echo "Start populate_db"
cd webapp && python manage.py populate_db --task model --mode final
>&2 echo "populate_db is up - executing command"
exec $cmd

