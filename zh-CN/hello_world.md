# 第一个程序
## 编写和运行
作为编程初学的惯例，我们首先写一个 Hello world 。
代码如下：
``` d
// hello_world.d
import std.stdio;

int main (string[] args){
    writeln ("Hello world!");

    return 0;
}
```
你可以在 **src** 文件夹内找到它。
接下来，编译运行它，结果应该像这样：
```
Hello world!
```
- 上一页：[环境配置](environment.md)
- 下一页：[基本语法](basic_syntax.md)
