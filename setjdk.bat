@ECHO OFF&PUSHD %~DP0 &TITLE ����JDK����
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo.&Echo ��ʹ���Ҽ����Թ���Ա������С�&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

:Menu
Echo.&Echo  1. ����JDK1.6��ػ�������
Echo.&Echo  2. ����JDK1.7��ػ�������
Echo.&Echo  3. ����JDK1.8��ػ�������
Echo.&Echo  4. �鿴��ǰ��ر�������
Echo.&Echo.
set /p a=�������ְ��س���
If Not "%a%"=="" Set a=%a:~0,1%
If "%a%"=="1" Goto set_1.6
If "%a%"=="2" Goto set_1.7
If "%a%"=="3" Goto set_1.8
If "%a%"=="4" Goto view_current
Echo.&Echo ������Ч�����������룡
PAUSE >NUL & CLS & GOTO Menu

:set_1.6
setx JAVA_HOME "C:\Program Files\Java\jdk1.6.0_45" /m
setx MAVEN_HOME "D:\Develop\apache-maven-3.2.5" /m
Echo.&Echo ������ɣ�����������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU

:set_1.7
setx JAVA_HOME "C:\Program Files\Java\jdk1.7.0_79" /m
setx MAVEN_HOME "D:\Develop\apache-maven-3.5.2" /m
Echo.&Echo ������ɣ�����������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU

:set_1.8
setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_171" /m
setx MAVEN_HOME "D:\Develop\apache-maven-3.6.0" /m
Echo.&Echo ������ɣ�����������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU

:view_current
Echo.&Echo %MAVEN_HOME%
Echo.&Echo %JAVA_HOME%
Echo.&Echo ����������أ�&PAUSE >NUL 2>NUL & CLS & GOTO MENU
