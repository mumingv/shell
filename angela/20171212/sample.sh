#/bin/sh
# 按行读入，然后有关键词的前面加一个标记，整行输出

cat demo.txt | awk '
{
    flag = 0;
    for (i = 1; i <= NF; i++) {
        if ($(i) == "audi") {
            flag = 1;
        }
    }
    if (flag == 1) {
        printf "1 "$(0)"\n";
    } else {
        printf "0 "$(0)"\n";
    }
}'
