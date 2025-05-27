#!/bin/bash

if [ "$WORKER_MODE" != "worker" ]; then
  echo "Running migrations for $WORKER_MODE"
  yarn run predeploy 
else
  echo "Skipping migrations because WORKER_MODE=worker"
fi

exec "$@"
