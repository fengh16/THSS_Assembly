该文件夹下的asm文件包括：

1. WinApp.asm: 教材（第7版）第11.2.6节代码，可以打开窗口，显示提示框，并在退出程序时有所提示。
2. WinApp_v2.asm：WinApp.asm重写的版本，使用windows.inc而非Irvine32和GraphWin。

注：

1. 请首先阅读课本第七版第11章《MS-Windows编程》，特别是：
  - 表11-1：MS-Windows和MASM的类型转换；
2. 程序中会使用Win32 API（官方教程在：https://learn.microsoft.com/zh-cn/windows/win32/api/ ），可以参考该官方教程及第七版课本第11章《MS-Windows编程》的内容，在汇编中通过函数调用的方法调用这些API。需要找某些功能时，请在搜索引擎中搜索【Win32API 功能名】。比如，要调用画图功能，请搜索【Win32API 画图】。
3. 在Win32窗口程序实现某些功能时，一般**不需要使用中断**。
  - 例如：**不要**使用`int 10h`在Win32窗口程序中画图（一个例子是 https://blog.csdn.net/qq_40298054/article/details/84496944 ，请务必注意这里的程序是**运行在DOSBox中的**，不是Win32窗口程序！！）
4. 如果子系统选择控制台，会导致运行时多出一个黑框，但不会有别的影响。