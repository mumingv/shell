#/***********************************************************
#      FileName: getdata.sh
#          Desc: 获取全国城市空气质量数据（来源：中国环境保护部）
#        Author: Jie Yin
#         Email: mumingv@163.com
#      HomePage: https://github.com/mumingv
#       Version: 0.0.1
#    LastChange: 2016-11-22 13:21:30
#       History:
# ***********************************************************/
#/bin/bash

# 网页地址示例：http://datacenter.mep.gov.cn/report/air_daily/air_dairy.jsp?city=&startdate=2016-10-01&enddate=2016-10-01&page=1

# !!这里需要用户进行设置
#############################################################
DATE_START="2016-10-01"  # 开始日期
DATE_END="2016-11-21"  # 结束日期（一般写昨天的日期，因为当天数据不一定会及时公布）

# 下面的程序不要动
#############################################################

# 数据存放目录
DATA_ORIG_DIR=01_data_orig
DATA_FILTER_DIR=02_data_filter

# 获取10月份和11月份数据
if [ ! -e ${DATA_ORIG_DIR} ]; then
    mkdir -p ${DATA_ORIG_DIR}
    start=${DATE_START}
    end=`date -d "1 day ${DATE_END}" +%Y-%m-%d`  # 日期自增
    while [[ ${start} < ${end} ]]
    do
        for pagenum in {1..13}; do
            echo -n "get data of ${start} page${pagenum} ... "
            lynx "http://datacenter.mep.gov.cn/report/air_daily/air_dairy.jsp?city=&startdate=${start}&enddate=${start}&page=${pagenum}" -dump > ${DATA_ORIG_DIR}/${start}.page${pagenum}
            echo "OK"
        done
        start=`date -d "1 day ${start}" +%Y-%m-%d`  # 日期自增
    done
else
    echo "Directory ${DATA_ORIG_DIR} is already exist!"
fi

# 处理获取的数据
if [ ! -e ${DATA_FILTER_DIR} ]; then
    mkdir -p ${DATA_FILTER_DIR}
    start=${DATE_START}
    end=`date -d "1 day ${DATE_END}" +%Y-%m-%d`  # 日期自增
    while [[ ${start} < ${end} ]]
    do
        echo -n "filter data of ${start} ... "
        for pagenum in {1..13}; do
            grep -E '   [0-9]{1,3} ' ${DATA_ORIG_DIR}/${start}.page${pagenum} | sed 's/^   //' >> ${DATA_FILTER_DIR}/${start}.total
        done
        echo "OK"
        start=`date -d "1 day ${start}" +%Y-%m-%d`  # 日期自增
    done
else
    echo "Directory ${DATA_FILTER_DIR} is already exist!"
fi
