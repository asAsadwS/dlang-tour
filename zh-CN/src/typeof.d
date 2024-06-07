// typeof.d
import std;

int main (){
	int n = 0;			// int 类型
	typeof (n + 1) j = 123;		// 也是 int 类型
	typeof (j++) m = 456;		// 还是 int 类型
	return 0;
}

float special (){
	typeof (return) i = 0.0;	// float 类型

	return 0.0;
}

class M {}

class N : M {
	typeof (this) A;		// 将会被定义为 N 类
	typeof (super) B;		// 将会被定义为 M 类
}

