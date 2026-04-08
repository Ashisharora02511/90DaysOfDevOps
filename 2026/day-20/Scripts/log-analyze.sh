set -euo pipefail

if [ $# -eq 0 ];then
        echo "Usage: $0 <logfile>"
        exit 1
fi


LOG_FILE=$1


if [ ! -f "$LOG_FILE" ];then
        echo "file does not exists"
        exit 1

fi



error_count=$(grep -Eciw "ERROR|Failed" "$LOG_FILE" || true)
echo "Total Error Count: $error_count"


CRITICAL_EVENTS=$(grep -n "CRITICAL" "$LOG_FILE" || true )


TOP_ERROR=$(grep "ERROR" "$LOG_FILE" 2>/dev/null | awk '{$1=$2=$3=""; print}' | sort | uniq -c | sort -rn | head -5 || true)


DATE=$(date +%F)


echo "LOG ANALYSIS"

echo "DATE: $DATE"
echo "LOG_FILE: $LOG_FILE"
echo "Total Lines: $(wc -l < "$LOG_FILE")"
echo " 5Top Errors"
echo "$TOP_ERROR"
