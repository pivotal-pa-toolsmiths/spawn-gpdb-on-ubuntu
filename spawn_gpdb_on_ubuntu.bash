#!/bin/bash

CONTAINER_NAME=$1

if [ -z "$CONTAINER_NAME" ] ; then
  echo "ERROR: Must provide container_name as follows:"
  echo "./spawn_gpdb_on_ubuntu.bash [container_name]"
  exit 1
fi

docker run -t -d --name $CONTAINER_NAME -v ~/workspace/spawn-gpdb-on-ubuntu:/spawn_scripts -v ~/workspace/gpdb:/home/gpadmin/gpdb_src --privileged --security-opt seccomp:unconfined ubuntu:16.04 bash

docker exec $CONTAINER_NAME /spawn_scripts/supporting_scripts/make_gpdb_on_docker.bash

echo
echo "------------------------------------------------------------"
echo "A GPDB cluster was successfully created in $CONTAINER_NAME!"
echo "To interact with your cluster, execute:"
echo
echo "docker exec -it $CONTAINER_NAME bash"
echo "------------------------------------------------------------"
echo

