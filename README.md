##   Goal
Initialize a simple GPDB cluster on your local machine within a ubuntu docker container.
*(cluster details below)*


##   Usage
1. Ensure you have gpdb cloned to your workspace
	1. cd ~/workspace ; git clone https://github.com/greenplum-db/gpdb.git
1. Clone *this repo* to your workspace
1. Grant permissions to all scripts
1. Run the following command, substituting [container_name] with a suitable name for your ubuntu docker container:
	1. ~/workspace/spawn-gpdb-on-ubuntu [container_name]

	
##  GP Details

[INFO]:-Greenplum instance status summary  
[INFO]:-----------------------------------------------------  
[INFO]:-   Master instance                                = Active  
[INFO]:-   Master standby                                 = No master standby configured  
[INFO]:-   Total segment instance count from metadata     = 2  
[INFO]:-----------------------------------------------------  
[INFO]:-   Primary Segment Status  
[INFO]:-----------------------------------------------------  
[INFO]:-   Total primary segments                         = 2   
[INFO]:-   Total primary segment valid (at master)        = 2  
[INFO]:-   Total primary segment failures (at master)     = 0  
[INFO]:-   Total number of postmaster.pid files missing   = 0  
[INFO]:-   Total number of postmaster.pid files found     = 2  
[INFO]:-   Total number of postmaster.pid PIDs missing    = 0  
[INFO]:-   Total number of postmaster.pid PIDs found      = 2  
[INFO]:-   Total number of /tmp lock files missing        = 0  
[INFO]:-   Total number of /tmp lock files found          = 2  
[INFO]:-   Total number postmaster processes missing      = 0  
[INFO]:-   Total number postmaster processes found        = 2  
[INFO]:-----------------------------------------------------  
[INFO]:-   Mirror Segment Status  
[INFO]:-----------------------------------------------------  
[INFO]:-   Mirrors not configured on this array  
[INFO]:-----------------------------------------------------  
