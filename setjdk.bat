@ECHO OFF&PUSHD %~DP0 &TITLE 设置JDK环境
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo.&Echo 请使用右键“以管理员身份运行”&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

:Menu
Echo.&Echo  1. 设置JDK1.6相关环境变量
Echo.&Echo  2. 设置JDK1.7相关环境变量
Echo.&Echo  3. 设置JDK1.8相关环境变量
Echo.&Echo  4. 查看当前相关变量设置
Echo.&Echo.
set /p a=输入数字按回车：
If Not "%a%"=="" Set a=%a:~0,1%
If "%a%"=="1" Goto set_1.6
If "%a%"=="2" Goto set_1.7
If "%a%"=="3" Goto set_1.8
If "%a%"=="4" Goto view_current
Echo.&Echo 输入无效，请重新输入！
PAUSE >NUL & CLS & GOTO Menu

:set_1.6
setx JAVA_HOME "C:\Program Files\Java\jdk1.6.0_45" /m
setx MAVEN_HOME "D:\Develop\apache-maven-3.2.5" /m
Echo.&Echo 设置完成，按任意键返回！&PAUSE >NUL 2>NUL & CLS & GOTO MENU

:set_1.7
setx JAVA_HOME "C:\Program Files\Java\jdk1.7.0_79" /m
setx MAVEN_HOME "D:\Develop\apache-maven-3.5.2" /m
Echo.&Echo 设置完成，按任意键返回！&PAUSE >NUL 2>NUL & CLS & GOTO MENU

:set_1.8
setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_171" /m
setx MAVEN_HOME "D:\Develop\apache-maven-3.6.0" /m
Echo.&Echo 设置完成，按任意键返回！&PAUSE >NUL 2>NUL & CLS & GOTO MENU

:view_current
Echo.&Echo %MAVEN_HOME%
Echo.&Echo %JAVA_HOME%
Echo.&Echo 按任意键返回！&PAUSE >NUL 2>NUL & CLS & GOTO MENU
