#!/bin/bash

echo
echo "...  logged in as gpadmin ..."
echo
. /opt/gpdb/greenplum_path.sh

sed "s|\(MASTER_HOSTNAME=\).*|\1localhost|" $GPHOME/docs/cli_help/gpconfigs/gpinitsystem_singlenode > gpinitsystem_singlenode
echo 'localhost' > hostlist_singlenode
echo "MASTER_DATA_DIRECTORY=/gpmaster/gpsne-1/" >> gpinitsystem_singlenode
export MASTER_DATA_DIRECTORY=/gpmaster/gpsne-1/

gpinitsystem -a -c gpinitsystem_singlenode
gpstate

echo
echo "------------------------------"
echo "Use psql, check config"
echo "------------------------------"
echo
psql postgres <<EOF
select * from gp_segment_configuration;
EOF
