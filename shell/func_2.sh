#!/bin/bash
cale(){
	 case $2 in
		+)
		echo $1 + $3 = $(( $1 + $3))
		;;
	esac

}
cale $1 $2 $3
