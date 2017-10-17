#/bin/sh
# 将每个字段改写成 key-value 对形式，并用分号进行分隔

head text_class_article_vectors.txt | awk '
{
    for (i = 1; i <= NF; i++) {
        if (i != NF) {
            printf $(i)" "i":"; 
        } else {
            printf $(i)" "i"\n";
        }
    }
}'
