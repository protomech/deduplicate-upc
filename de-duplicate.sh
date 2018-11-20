# sort all upcs, eliminate ones appearing only once, replace dos line endings with unix
cat *.txt | sort -n | uniq -c | sort -n | grep -vE "^   1 " | cut -c 6- | tr -d '\015' > dups


# print all upcs and offers containing
for file in *txt; do
  echo "$file" | sed -e  's/.txt//'
  grep -f dups $file

  # newline
  echo
done
