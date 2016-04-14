# if test "$#" -ne 1; then
#     echo "Illegal number of parameters"
#     echo "Usage: `basename $0` <result file name>"
#     echo "Example resultSources"
#     echo "resultBasic"
#     echo "resultTimeAggregates"
#     exit 0
# fi

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` <resultSource>"
  exit 0
fi

resultname=Result_from_Thu_Apr_14_13_16_38_UTC_2016

./scommand cmd=export \
         url=http://10.92.71.162/concerto \
         username=santosh.marigowda@sky.uk \
         password=soasta \
         type=result \
         file=CollectionAggregate_$resultname.csv \
         resultSource="Collection Aggregate" \
         format=csv \
         name="/Compositions/DownloadAPI/U3/DeploymentDryRun/D_API_DEPL_DRYRUN_30PCTLoad/Result from Thu Apr 14 13:16:38 UTC 2016"
