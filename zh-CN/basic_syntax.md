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

|               |               |               |               |               |
|:-------------:|:-------------:|:-------------:|:-------------:|:-------------:|
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

你可以查看 [这里](keyword.md) 来获得更多的信息。

## 类型

**D语言** 是一个静态类型的语言，任何一个表达式都有其类型。

有以下几种基本类型：
| 类型       	| 默认值       	| 大小          	|
|------------	|--------------	|---------------	|
| **void**   	|              	|               	|
| **bool**   	| false        	| 8 位          	|
| **byte**   	| 0            	| 有符号 8 位   	|
| **ubyte**  	| 0u           	| 无符号 8 位   	|
| **short**  	| 0            	| 有符号 16 位  	|
| **ushort** 	| 0u           	| 无符号 16 位  	|
| **int**    	| 0            	| 有符号 32 位  	|
| **uint**   	| 0u           	| 无符号 32 位  	|
| **long**   	| 0            	| 有符号 64 位  	|
| **ulong**  	| 0u           	| 无符号 64 位  	|
| **cent**   	| 0            	| 有符号 128 位 	|
| **ucent**  	| 0u           	| 无符号 128 位 	|
| **float**  	| float.nan    	| 32 位         	|
| **double** 	| double.nan   	| 64 位         	|
| **real**   	| real.nan     	| 128 位        	|
| **char**   	| '\xFF'       	| 无符号 8 位   	|
| **wchar**  	| '\uFFFF'     	| 无符号 16 位  	|
| **dchar**  	| '\U0000FFFF' 	| 无符号 32 位  	|

同时，使用 `typeof` 可以提取一个表达式的类型，例如：
``` d
// typeof.d
import std;

int main (){
    int n = 0;                  // int 类型
    typeof (n + 1) j = 123;     // 也是 int 类型
    typeof (j++) m = 456;       // 还是 int 类型
    return 0;
}
```

特殊的，有一些特殊的：

```
// typeof.d

float special (){
    typeof (return) i = 0.0;    // float 类型

    return 0.0;
}

class M {}

class N : M {
    typeof (this) A;            // 将会被定义为 N 类
    typeof (super) B;            // 将会被定义为 M 类
}
```

## 枚举


- 上一页：[第一个程序](hello_world.md)
- 下一页：[模板](template.md)
