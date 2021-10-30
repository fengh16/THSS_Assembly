该文件夹下的asm文件包括：

1. AddSubAlt.asm: 对EAX进行加减操作，并打印出寄存器中的值。VS中可以直接在`main PROC`到`main ENDP`中间的几行上打断点。
2. InputOutput.asm: 利用scanf和printf，将输入的两个整数相加并输出。由于不使用`main PROC`的写法，所以无法在VS中直接设置断点（可以改成`start PROC`到`start ENDP`的写法）。
3. MessageBox.asm: 利用MessageBox弹出一个提示框。

注：

1. 请注意文件编码为GB 2312（可以参考文件InputOutput.asm），若使用utf-8编码可能在VS中会出错。
2. scanf和printf在通过INVOKE调用时，参数和C语言中调用的参数相同。
3. VS中请选择子系统为控制台。
4. .inc文件类似于C语言的.h文件，如果需要某个函数的声明，可以include这些.inc文件，也可以直接将函数的声明复制过来（可以参考文件InputOutput.asm）。