### 无需额外配置环境变量

1. 确认masm32正确安装至C:\masm32

   + 打开Windows Powershell（或基于Powershell的Windows Terminal），执行

     ```powershell
     C:\masm32\bin\ml.exe /?
     ```

     若正确显示了帮助信息，则masm32大概率已正确安装

2. 将课程提供的Irvine资源包解压至C盘根目录，使得C:\Irvine\Irvine32.lib存在

3. 打开Windows Powershell，执行

   ```powershell
   $profile
   ```

   一般输出这样的路径：`C:\Users\{UserName}\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`

   其中{UserName}是用户名，因人而异

   `C:\Users\{UserName}\Documents`即所谓“文档”文件夹

   将下面的代码粘贴至路径指向的文件`Microsoft.PowerShell_profile.ps1`中

   ```powershell
   $ENV:INCLUDE="C:\masm32\include;C:\Irvine"
   $ENV:LIB="C:\masm32\lib;C:\Irvine"
   function asm_build($filename, $dep=("kernel32.lib","user32.lib","Irvine32.lib"))
   {
       C:\"masm32\bin\ml.exe" /c /coff /Cp $filename".asm"
       C:\"masm32\bin\link.exe" /SUBSYSTEM:CONSOLE $filename $dep
   }
   function asm_debug($filename, $dep=("kernel32.lib","user32.lib","Irvine32.lib"))
   {
       C:\"masm32\bin\ml.exe" /c /coff /Cp /Zd /Zf /Zi $filename".asm"
       C:\"masm32\bin\link.exe" /SUBSYSTEM:CONSOLE /DEBUG $filename $dep
   }
   ```

   此后便可在Powershell中使用`asm_build`命令编译和链接.asm，`asm_debug`命令会添加调试必要的信息

   （可以使用Ollydbg进行调试）

注意：上述代码仅默认链接了最基本的库，若需要链接其他库或资源，或者链接多个.obj，需自行修改或在.asm中加入INCLUDELIB

