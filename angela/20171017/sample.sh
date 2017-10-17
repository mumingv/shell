#/bin/sh
# 将结构化文件的除了第2列之外的所有列输出

cat demo.txt | awk '
{
    for (i = 1; i <= NF; i++) {
        if (i != NF) {
            if (i != 2) {
                printf $(i)"\t"; 
            }
        } else {
            printf $(i)"\n";
        }
    }
}'
