#!bin/bash
#一些数组的特殊用法，抽取，例如：city[*]:0
#chenshuanglin 2013/7/13

city=(najing xian beijing fuzhou)
echo "抽取字串"
echo ${city[*]:2} #抽取从第2个到结束的数组
echo ${city[*]:0}
echo ${city[*]:2:4} #抽取从第0个元素开始的2个元素
echo

echo "删除字串"
echo ${city[*]#x*a} #删除从x到a的最短字串
echo ${city[*]##x*a} #删除从x到a的最长子串
echo

echo "替换字串"
echo ${city[*]/x*a/dang}  #替换第一次与x*a匹配的字串
echo ${city[*]//x*a/dang}  #替换所有与x*a匹配的字串

