FT_LINE1=7
FT_LINE2=15
cat /etc/passwd | awk -F ':' '!/^#/ { print $1 }' | awk 'NR%2==0' | rev | sort -r | awk "$FT_LINE1<=NR&&NR<=$FT_LINE2" | awk 'NR==1 { printf("%s", $0) } NR>1 { printf(", %s", $0) } END { printf(".")}'