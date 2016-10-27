#/bin/sh
# 

head text_class_article_vectors.txt | awk '
# 这段代码只执行一次，初始化循环变量
BEGIN {
    a = 0;  # 变量a标记行号
}
# 下面这段代码每行都会执行一次
{
    # 这里的if-else没有意义，改成: printf $1 " "; 即可
    if (a < 12500) {
        printf $1 " ";  # 打印当前行的第一个字段（字段的意思是：一行文本被空格分隔后的一个个小段就是字段，每个字段按顺序进行编号：$1 $2 $3 ...）
    } else {
        printf $1 " ";
    }

    # 这里的for循环用户遍历当前行的每一个字段，NF就是字段的数量（比如有一行："I am in baidu"，对应NF就等于4）
    for (b = 1; b < NF; b++) {
        printf b ":" $(b+1) " ";
    }
    print "";  # 换行, 直接写 print 就可以了
    a++;
}'
