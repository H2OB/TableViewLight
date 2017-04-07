# 基于几年项目中tableView 的使用，封装了这个工具。

1。为什么这么封装 
tableView在项目中使用很频繁，每次实现delgate和datasource重复写很多，而过去的高度缓存和自动适应高度对帧率还是有一定的影响（朋友圈，微博）
2。优点
拓展性强，使用简单，tableView 的delgate和datasource不需要重复写，实现一个tableView最多两三行代码
3。实现过程
最初是将tableView 的delgate和datasource 实现教给其他类，但是每次需要实例化这个类，需要新建文件，实例化，赋值，设置事件回调，很繁琐。现在，tableView 的delgate和datasource已经不用再关注了只需要关注数据。
