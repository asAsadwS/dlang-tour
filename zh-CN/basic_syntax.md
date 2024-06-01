# 基本语法
让我们看一看之前所编写的 **hello_world.d**。
``` d
// hello_world.d
import std.stdio;

void main (string[] args){
    writeln ("Hello world!");
}
```
## 注释
其中 以 `//` 开头的就是单行注释。同时也可以使用形如 `/* ... */` 的块注释。
**D语言** 还支持文档注释，你可以参考 [Doc](https://dlang.org/spec/ddoc.html)

## 关键字
在上面的程序当中，`import`、`void` 等都是关键字。
**D语言** 的关键字有：
|----------     |----------     |----------     |----------     |----------     |
|abstract       |alias          |align          |asm            |assert         |
|auto           |body           |bool           |byte           |case           |
|cast           |catch          |char           |class          |const          |
|continue       |dchar          |debug          |default        |delegate       |
|deprecated     |do             |double         |else           |enum           |
|export         |extern         |false          |final          |finally        |
|float          |for            |foreach        |function       |goto           |
|if             |import         |in             |inout          |int            |
|interface      |invariant      |is             |long           |macro          |
|mixin          |module         |new            |null           |out            |
|override       |package        |pragma         |private        |protected      |
|public         |real           |ref            |return         |scope          |
|short          |static         |struct         |super          |switch         |
|synchronized   |template       |this           |throw          |true           |
|try            |typeid         |typeof         |ubyte          |uint           |
|ulong          |union          |unitest        |ushort         |version        |
|void           |wchar          |while          |with           |               |



