@echo off
cd
cd ..
cd ..
color c
GOTO :ALL
TITLE Inaros.rip Tool
ipconfig /flushdns
CLS
:ALL
:Applications
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
:Minecraft
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
::===============================================================
:: Minecraft
::===============================================================
ECHO ===============================================================
ECHO Clearing Minecraft cache/data
ECHO ===============================================================
del /s /f /q %appdata%\.minecraft\*.log
del /s /f /q %appdata%\.minecraft\liteconfig\liteloader.log
del /s /f /q %appdata%\Badlion Client\*.log
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
cls
ECHO ===============================================================
ECHO Finished Clearing Minecraft cache/data
ECHO ===============================================================
timeout /t 3 /nobreak > NUL
:Windows
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
::===============================================================
:: Windows
::===============================================================
ECHO ===============================================================
ECHO Clearing Windows cache/data
ECHO ===============================================================
forfiles /p /s /f "%userprofile%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -7
del /s /f /q %userprofile%\Downloads\*.*
del /s /f /q Downloads\*.*
del /s /f /q %USERPROFILE%\AppData\Local\Microsoft\CLR_v4.0_32\*.log
del /s /f /q %appdata%\*.log
del /s /f /q %temp%\*.*
del /s /f /q %windir%\temp\*.*    
del /s /f /q %windir%\Prefetch\*.*    
del /s /f /q %windir%\system32\dllcache\*.*    
del /s /f /q "%SysteDrive%\Temp"\*.*    
del /s /f /q %temp%\*.*    
del /s /f /q "%USERPROFILE%\Local Settings\History"\*.*    
del /s /f /q "%USERPROFILE%\Local Settings\Temporary Internet Files"\*.*    
del /s /f /q "%USERPROFILE%\Local Settings\Temp"\*.*    
del /s /f /q "%USERPROFILE%\Recent"\*.*    
del /s /f /q "%USERPROFILE%\Cookies"\*.*    
cd
cd ..
cd ..
ECHO ===============================================================
ECHO Running System Cleaner
ECHO Deleting all files containing .tmp .temp .old .old .gid .fts .$$$ .pf .??~ thumbs.db .dmp .db$ .$db ._mp .~mp
ECHO ===============================================================
del /S /Q *.tmp *.temp *.old *.old *.gid *.fts *.$$$ *.pf *.??~ thumbs.db *.dmp *.db$ *.$db *._mp *.~mp
del c:\WIN386.SWP
::cleanmgr /sagerun:1
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
cls
ECHO ===============================================================
ECHO Finished Clearing Windows cache/data
ECHO ===============================================================
timeout /t 3 /nobreak > NUL
Color 6
:Browsers
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
::===============================================================
:: Browsers
::===============================================================
ECHO ===============================================================
ECHO Clearing Browser cache
ECHO ===============================================================
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
::===============================================================
:: Firefox
::===============================================================
taskkill /im "firefox.exe"
set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles
del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"
for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite
::===============================================================
:: Chrome
::===============================================================
taskkill /F /IM "chrome.exe">nul 2>&1

set ChromeDataDir="C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default"
set ChromeCache=%ChromeDataDir%\Cache>nul 2>&1  
del /q /s /f "%ChromeCache%\*.*">nul 2>&1    
del /q /f "%ChromeDataDir%\*Cookies*.*">nul 2>&1    
del /q /f "%ChromeDataDir%\*History*.*">nul 2>&1    


set ChromeDataDir="C:\Users\%USERNAME%\Local Settings\Application Data\Google\Chrome\User Data\Default"
set ChromeCache=%ChromeDataDir%\Cache>nul 2>&1
del /q /s /f "%ChromeCache%\*.*">nul 2>&1   
del /q /f "%ChromeDataDir%\*Cookies*.*">nul 2>&1    
del /q /f "%ChromeDataDir%\*History*.*">nul 2>&1
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
cls
ECHO ===============================================================
ECHO Finished Clearing Browser cache
ECHO ===============================================================
timeout /t 3 /nobreak > NUL
:COD
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
::===============================================================
:: Call of Duty
::===============================================================
ECHO ===============================================================
ECHO Clearing COD cache
ECHO ===============================================================
taskkill / IM Agent.exe / F
taskkill / IM Battle.net.exe / F
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\*.tmp *.temp *.old *.gid *.fts *.$$$ *.--- *.~* *.??$ *.___ *.~mp *._mp *.$db *.db$ *.dmp thumbs.db *.??~ *.pf
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\main\data0.dcache"
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\main\data0.dcache"
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\main\data1.dcache"
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\main\toc0.dcache"
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\main\toc1.dcache"
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\Data\data\shmem"
del "%USERPROFILE%:\Games\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del /f "%USERPROFILE%:\Games\Call of Duty Modern Warfare\Data\data\shmem
del /f "%USERPROFILE%:\Games\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del "E:\Games\Call of Duty Modern Warfare\main\data0.dcache"
del "E:\Games\Call of Duty Modern Warfare\main\data0.dcache"
del "E:\Games\Call of Duty Modern Warfare\main\data1.dcache"
del "E:\Games\Call of Duty Modern Warfare\main\toc0.dcache"
del "E:\Games\Call of Duty Modern Warfare\main\toc1.dcache"
del "E:\Games\Call of Duty Modern Warfare\Data\data\shmem"
del "E:\Games\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del /f " E:\Games\Call of Duty Modern Warfare\Data\data\shmem
del /f " E:\Games\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del "C:\Games\Call of Duty Modern Warfare\main\data0.dcache"
del "C:\Games\Call of Duty Modern Warfare\main\data0.dcache"
del "c:\Games\Call of Duty Modern Warfare\main\data1.dcache"
del "C:\Games\Call of Duty Modern Warfare\main\toc0.dcache"
del "C:\Games\Call of Duty Modern Warfare\main\toc1.dcache"
del "C:\Games\Call of Duty Modern Warfare\Data\data\shmem"
del "C:\Games\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del /f "D:\Games\Call of Duty Modern Warfare\Data\data\shmem
del /f "D:\Games\Call of Duty Modern Warfare\main\recipes\cmr_hist"
echo  ____  _  _    __    ____  _____  ___    ____  ____  ____ 
echo (_  _)( \( )  /__\  (  _ \(  _  )/ __)  (  _ \(_  _)(  _ \
echo  _)(_  )  (  /(__)\  )   / )(_)( \__ \   )   / _)(_  )___/
echo (____)(_)\_)(__)(__)(_)\_)(_____)(___/()(_)\_)(____)(__)   
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Blizzard Entertainment" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\InstallTime" /f
cls
ECHO ===============================================================
ECHO Finished Clearing COD cache
ECHO ===============================================================
del /f "D:\Games\Call of Duty Modern Warfare\main\recipes\cmr_hist"
del /s /f /q %appdata%\cleaner.bat
Exit