#!/bin/sh    
#hostname=`hostname`
echo "################################################################"
echo "#           Portal Database backup is in proggress                    #"
echo "################################################################"

dbname=portal6.2
# Dump DB
  date=`date +"%Y%m%d_%H%M%N"`
  filename="/backup/${dbname}_${date}.backup"
 /opt/PostgreSQL/9.2/bin/pg_dump -U postgres -h localhost  portal6.2 >  $filename 
  gzip $filename
echo " "
echo "##########Portal Database Backup has been completed.Go to /backup  for details###########"
exit 0
