#/bin/bash
if ![ -e pw_list.txt ]; then
   touch pw_list.txt
fi

while read LINE
do
   echo "adding ${LINE} "
   useradd $LINE
   TEMP_PASS=$( pwmake 10 )
   echo $TEMP_PASS | passwd $LINE --stdin
   echo $?
   echo "${LINE} ${TEMP_PASS}">>pw_list.txt
done<users_list.txt
