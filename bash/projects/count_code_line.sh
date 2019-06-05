# 统计指定目录下的代码的指定文件类型的代码行数

# all file ext type
file_types="sh c h cpp cs md hs java py pl PS1 R rkt vala"
# ralative path
relative_path="../../"
# save all numbers
total_num=0


# travel all type in types
for type in $file_types
do
  # regex_str=$(printf ".*\.*\.\(%s\)$" $type)
  regex_str=".*\.*\.\($type\)$"
  num_str=$(find $relative_path | \
            grep -p $regex_str | \
            awk '!/venv/' | \
            xargs -I {1} cat {1} | \
            wc -l)
  echo $type "\t" $num_str
  num=$(echo $num_str | \
        sed 's/ //g')
  total_num=$((total_num+num))
done

echo ---
echo total "\t" $total_num

