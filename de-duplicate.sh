# sort all upcs, eliminate ones appearing only once, replace dos line endings with unix
dups=`cat *.txt | sort -n | uniq -c | sort -n | grep -vE "^   1 " | cut -c 6- | tr -d '\015'`

# print all upcs and offers containing
for upc in $dups; do
  # print upc
  echo "$upc"
  
  # find offers containing upc
  grep -l $upc *txt | sed -e 's/.txt//' 

  # newline
  echo
done
