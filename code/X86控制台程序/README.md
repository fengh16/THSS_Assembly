该文件夹下的asm文件包括：

1. AddSubAlt.asm: 对EAX进行加减操作，并打印出寄存器中的值。VS中可以直接在`main PROC`到`main ENDP`中间的几行上打断点。
2. InputOutput.asm: 利用scanf和printf，将输入的两个整数相加并输出。由于不使用`main PROC`的写法，所以无法在VS中直接设置断点（可以改成`start PROC`到`start ENDP`的写法）。
3. InputOutput_crt.asm: 对InputOutput.asm进行修改，将scanf和printf换为`msvcrt.inc`中的crt_scanf和crt_printf，其余没有变化。
4. MessageBox.asm: 利用MessageBox弹出一个提示框。

注：

1. 编码问题：
    - 请注意VS中默认情况下，需要使用GB 2312文件编码（可以参考文件InputOutput.asm），若使用utf-8编码可能在VS中会出错。
2. 常用函数：
    - scanf和printf在通过INVOKE调用时，参数和C语言中调用的参数相同（可以参考文件InputOutput.asm）。
    - C语言中常用的函数，在安装masm32后，可以在masm32文件夹下的include\msvcrt.inc中进行搜索（`crt_xxxx`系列函数），参数和C++版本的对应函数相同（可以参考文件InputOutput_crt.asm）。
    - `.inc`文件类似于C语言的`.h`文件，如果需要某个函数的声明，可以include这些`.inc`文件（可以参考文件InputOutput_crt.asm），也可以直接将函数的声明复制过来（可以参考文件InputOutput.asm）。
3. 运行环境：
    - VS中请选择子系统为控制台。