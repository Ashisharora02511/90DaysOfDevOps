
 read -p "Enter the service name: " SERVICE
 read -p "DO you really want to check the status of $SERVICE ? (y/n):" CHOICE
 if [ "$CHOICE" = "y" ]; then
   STATUS=$(systemctl is-active "$SERVICE")
   if [ "$STATUS" = "active" ]; then
        echo "$SERVICE is running"
   else
        echo "$SERVICE is not running"
   fi
 else
   echo "Process skipped"
 fi
