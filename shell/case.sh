#!/bin/bash
cat <<EOF
**********************
**1.backup
**2.copy
**3.quit
**********************
EOF
read -p "请输入需要操作的选项[1|2|3]" re
case $re in 
	1|backup)
		echo "backup............"
		;;
	2|copy)
                echo "copy..........."
                ;;
        3|quit)
                echo "quit............"&&exit
                ;;
	*)
		echo "你注意一点..."
		echo "USAGE:$0 {1|2|3}"
		exit
 
esac
