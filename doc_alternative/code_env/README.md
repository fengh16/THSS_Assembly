## VS Code进行masm32编译与运行

**重要：该方法无法进行断点调试，助教不保证该方法能正常运行masm32程序，并且助教不负责对使用该方法进行配置而引起的任何问题的答疑，请优先使用`doc`文件夹下的说明方式用VS配置运行环境！**

### 安装masm32

安装到`C:\masm32`，或者用`mklink /d`命令链接到该路径。

### 解压Irvine

解压到`C:\Irvine`，或者用`mklink /d`命令链接到该路径。

### 执行代码

用VS Code打开CODE_ENV文件夹，打开asm文件（编码为GB2312），选择 终端——运行生成任务（Terminal - Run Build Task） ，即可在build文件夹下找到对应exe文件。

目前试着写了`.vscode/launch.json`，但是并不work。如果有人能把它弄得能用，可以提个PR。

### 需要使用其他lib文件

请修改`.vscode/tasks.json`内`link`时的参数。

### 注意

1. 默认用GB 2312编码而非UTF-8编码。