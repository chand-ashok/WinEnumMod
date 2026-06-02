@echo off
echo WinEnum started ...

:: Color echo from https://www.reddit.com/r/Batch/comments/18ljsk8/how_can_i_echo_a_colored_line_to_cmd/
:: @echo off
:: for /f %%a in ('echo prompt $E^| cmd') do set "ESC=%%a"
:: echo %ESC%[0;33m[*] Installation Complete %ESC%[0m
:: pause

for /f %%a in ('echo prompt $E^| cmd') do set "ESC=%%a"

echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] System Information%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] hostname%ESC%[0m
hostname 2>nul
echo.
echo.
echo %ESC%[1;33m[+] systeminfo%ESC%[0m
systeminfo 2>nul
echo.
echo.
echo %ESC%[1;33m[+] ver%ESC%[0m
ver 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Environment Variables%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] path%ESC%[0m
path 2>nul
echo.
echo.
echo %ESC%[1;33m[+] set%ESC%[0m
set 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Current User Details%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] whoami /all%ESC%[0m
whoami /all 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Users, Groups, Policies%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] net users%ESC%[0m
net users 2>nul
echo.
echo %ESC%[1;33m[+] net localgroup%ESC%[0m
net localgroup 2>nul
echo.
echo %ESC%[1;33m[+] net localgroup administrators%ESC%[0m
net localgroup administrators 2>nul
echo.
echo %ESC%[1;33m[+] net accounts%ESC%[0m
net accounts 2>nul
echo.
echo %ESC%[1;33m[+] query session%ESC%[0m
query session 2>nul
echo.
echo.
echo %ESC%[1;33m[+] qwinsta%ESC%[0m
qwinsta 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Microsoft\Terminal Server Client\Servers"%ESC%[0m
reg query "HKLM\Software\Microsoft\Terminal Server Client\Servers" 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\Microsoft\Terminal Server Client\Servers"%ESC%[0m
reg query "HKCU\Software\Microsoft\Terminal Server Client\Servers" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Domain Information%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] set userdomain%ESC%[0m
set userdomain 2>nul
echo.
echo.
echo %ESC%[1;33m[+] net view /domain%ESC%[0m
net view /domain 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Network Information%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] ipconfig /all%ESC%[0m
ipconfig /all 2>nul
echo.
echo.
echo %ESC%[1;33m[+] route print%ESC%[0m
route print 2>nul
echo.
echo.
echo %ESC%[1;33m[+] arp -A%ESC%[0m
arp -A 2>nul
echo.
echo.
echo %ESC%[1;33m[+] netstat -anop tcp%ESC%[0m
netstat -anop tcp 2>nul
echo.
echo.
echo %ESC%[1;33m[+] netstat -anop udp%ESC%[0m
netstat -anop udp 2>nul
echo.
echo.
echo %ESC%[1;33m[+] netstat -anop tcp ^| findstr /iv LISTENING%ESC%[0m
netstat -anop tcp | findstr /iv LISTENING 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Firewall Information%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] netsh firewall show state%ESC%[0m
netsh firewall show state 2>nul
echo %ESC%[1;33m[+] netsh firewall show config%ESC%[0m
netsh firewall show config 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Defender Information%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] sc queryex WinDefend%ESC%[0m
sc queryex WinDefend 2>nul
echo.
echo.
echo %ESC%[1;33m[+] wmic /namespace:\\root\Microsoft\Windows\Defender path MSFT_MpPreference get /format:list%ESC%[0m
wmic /namespace:\\root\Microsoft\Windows\Defender path MSFT_MpPreference get /format:list 2>nul
echo.
echo.
echo %ESC%[1;33m[+] wmic /namespace:\\root\Microsoft\Windows\Defender path MSFT_MpComputerStatus get /format:list%ESC%[0m
wmic /namespace:\\root\Microsoft\Windows\Defender path MSFT_MpComputerStatus get /format:list 2>nul
echo.
echo.
echo %ESC%[1;33m[+] wmic /namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName /Format:List%ESC%[0m
wmic /namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName /Format:List 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows Defender\Exclusions" /s%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows Defender\Exclusions" /s 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] LAPS Enumeration%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
::Legacy LAPS
echo %ESC%[1;33m[+] dir /a "C:\Program Files\LAPS\CSE\AdmPwd.dll"%ESC%[0m
dir /a "C:\Program Files\LAPS\CSE\AdmPwd.dll" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "C:\Program Files (x86)\LAPS\CSE\AdmPwd.dll"%ESC%[0m
dir /a "C:\Program Files (x86)\LAPS\CSE\AdmPwd.dll" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Policies\Microsoft\AdmPwd" /s%ESC%[0m
reg query "HKLM\Software\Policies\Microsoft\AdmPwd" /s 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Policies\Microsoft Services\AdmPwd" /s%ESC%[0m
reg query "HKLM\Software\Policies\Microsoft Services\AdmPwd" /s 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Microsoft\AdmPwd" /s%ESC%[0m
reg query "HKLM\Software\Microsoft\AdmPwd" /s 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\GPExtensions\{D76B9641-3288-4f75-942D-087DE603E3EA}" /v%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\GPExtensions\{D76B9641-3288-4f75-942D-087DE603E3EA}" /v 2>nul
echo.
echo.
::New LAPS
echo %ESC%[1;33m[+] dir /a "C:\Windows\System32\AdmPwd.dll"%ESC%[0m
dir /a "C:\Windows\System32\AdmPwd.dll" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "C:\Windows\System32\laps.dll"%ESC%[0m
dir /a "C:\Windows\System32\laps.dll" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Microsoft\Policies\LAPS" /v BackupDirectory%ESC%[0m
reg query "HKLM\Software\Microsoft\Policies\LAPS" /v BackupDirectory 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\LAPS" /s%ESC%[0m
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\LAPS" /s 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\LAPS /s"%ESC%[0m
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\LAPS" /s 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Common Directories%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] dir /a "%userprofile%\"%ESC%[0m
dir /a "%userprofile%\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "%userprofile%\Desktop\"%ESC%[0m
dir /a "%userprofile%\Desktop\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "%userprofile%\Documents\"%ESC%[0m
dir /a "%userprofile%\Documents\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "%userprofile%\Downloads\"%ESC%[0m
dir /a "%userprofile%\Downloads\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "%appdata%\"%ESC%[0m
dir /a "%appdata%\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "%localappdata%\"%ESC%[0m
dir /a "%localappdata%\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "%localappdata%\Temp"%ESC%[0m
dir /a "%localappdata%\Temp\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "C:\"%ESC%[0m
dir /a "C:\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "C:\inetpub\"%ESC%[0m
dir /a "C:\inetpub\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "C:\Program Files\"%ESC%[0m
dir /a "C:\Program Files\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "C:\Program Files (x86)\"%ESC%[0m
dir /a "C:\Program Files (x86)\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "C:\ProgramData\"%ESC%[0m
dir /a "C:\ProgramData\" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Interesting Files And Directories%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] type "%appdata%\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt"%ESC%[0m
type "%appdata%\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\WINDOWS\System32\drivers\etc\hosts%ESC%[0m
type C:\WINDOWS\System32\drivers\etc\hosts 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\WINDOWS\System32\drivers\etc\networks%ESC%[0m
type C:\WINDOWS\System32\drivers\etc\networks 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\boot.ini%ESC%[0m
type C:\boot.ini 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type "%USERPROFILE%\AppData\Roaming\Code\User\settings.json"%ESC%[0m
type "%USERPROFILE%\AppData\Roaming\Code\User\settings.json" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a "%USERPROFILE%\AppData\Roaming\Code\User\History\"%ESC%[0m
dir /a "%USERPROFILE%\AppData\Roaming\Code\User\History\" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a "C:\Windows\repair\"%ESC%[0m
dir /a "C:\Windows\repair\" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a "C:\Windows\system32\config\RegBack\"%ESC%[0m
dir /a "C:\Windows\system32\config\RegBack\" 2>nul
echo.
echo %ESC%[1;33m[+] dir /s/a "C:\Windows\System32\AppLocker\"%ESC%[0m
dir /s/a "C:\Windows\System32\AppLocker\" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a "C:\Transcripts\"%ESC%[0m
dir /a "C:\Transcripts\" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a "%localappdata%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\"%ESC%[0m
dir /a "%localappdata%\Packages\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe\LocalState\" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a "C:\Windows\PolicyDefinitions\"%ESC%[0m
dir /a "C:\Windows\PolicyDefinitions\" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a "C:\windows\CCM\SCClient.exe"%ESC%[0m
dir /a "C:\windows\CCM\SCClient.exe" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a "C:\windows\system32\bash.exe"%ESC%[0m
dir /a "C:\windows\system32\bash.exe" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a C:\windows\system32\wsl.exe%ESC%[0m
dir /a "C:\windows\system32\wsl.exe" 2>nul
echo.
echo %ESC%[1;33m[+] dir /a C:\windows\system32\inetsrv\appcmd.exe%ESC%[0m
dir /a "C:\windows\system32\inetsrv\appcmd.exe" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Configuration Files%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] type "%USERPROFILE%\.docker\config.json"%ESC%[0m
type "%USERPROFILE%\.docker\config.json" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type "%USERPROFILE%\.kube\config"%ESC%[0m
type "%USERPROFILE%\.kube\config" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\Windows\Panther\Unattend.xml%ESC%[0m
type C:\Windows\Panther\Unattend.xml 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\Windows\Panther\Unattend\Unattend.xml%ESC%[0m
type C:\Windows\Panther\Unattend\Unattend.xml 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\Windows\Panther\Unattend\Unattended.xml%ESC%[0m
type C:\Windows\Panther\Unattend\Unattended.xml 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\Windows\Panther\Unattended.xml%ESC%[0m
type C:\Windows\Panther\Unattended.xml 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\Windows\System32\Sysprep\unattend.xml%ESC%[0m
type C:\Windows\System32\Sysprep\unattend.xml 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type C:\Windows\System32\Sysprep\unattended.xml%ESC%[0m
type C:\Windows\System32\Sysprep\unattended.xml 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type c:\sysprep.inf%ESC%[0m
type c:\sysprep.inf 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type c:\sysprep\sysprep.xml%ESC%[0m
type c:\sysprep\sysprep.xml 2>nul
echo.
echo.
echo %ESC%[1;33m[+] type "%USERPROFILE%\.gitconfig"%ESC%[0m
type "%USERPROFILE%\.gitconfig" 2>nul
echo.
echo.
::echo %ESC%[1;33m[+] cd "%USERPROFILE%\" ^&^& findstr /si pass *.xml *.ini *.txt%ESC%[0m
::cd %USERPROFILE% && findstr /si pass *.xml *.ini *.txt
::echo.
::echo.
echo %ESC%[1;33m[+] robocopy "%USERPROFILE%" . /l /s /njh /njs /ns /nc /ndl /xj *pass* *cred* *vnc* *.c*nf* *.kdbx *secret* *db* *git* *aws* *key* *.enc *.pdf *.doc *.docx *.xls *.xlsx *.ini *.zip *bak *bak.* *.tar *.tar.gz *.7z *database* *.xml *.json *.cfg *.y*ml *.exe *_history *.txt%ESC%[0m
robocopy "%USERPROFILE%" . /l /s /njh /njs /ns /nc /ndl /xj *pass* *cred* *vnc* *.c*nf* *.kdbx *secret* *db* *git* *aws* *key* *.enc *.pdf *.doc *.docx *.xls *.xlsx *.ini *.zip *bak *bak.* *.tar *.tar.gz *.7z *database* *.xml *.json *.cfg *.y*ml *.exe *_history *.txt 2>nul
echo.
echo %ESC%[1;33m[+] robocopy C:\Windows\ . /lev:5 /l /s /njh /njs /ns /nc /ndl /xj *.cer *.csr *.der *.gpg *.kdbx *.ovpn *.pfx *.pem *.p12 *.pgp *.plan *.rdg *.rhosts *config*.php *database*.php *vnc*.c*nf* *vnc*.ini *vnc*.txt *vnc*.xml *_history .git-credentials .htpasswd ConsoleHost_history.txt Dockerfile FreeSSHDservice.ini KeePass.config "Login Data" RDCMan.settings SAM SCClient.exe SiteList.xml TypedURLs TypedURLsTime access.log accessTokens.json access_tokens.db anaconda-ks.cfg azureProfile.json cesi.conf credentials credentials.db datasources.xml docker-compose.yml drives.xml elasticsearch.y*ml error.log groups.xml hostapd.conf hosts.equiv httpd.conf httpd.conf https-xampp.conf https.conf id_dsa key3.db key4.db kibana.y*ml known_hosts legacy_credentials my.cnf my.ini php.ini places.sqlite printers.xml rsyncd.conf scheduledtasks.xml server.xml services.xml setupinfo setupinfo.bak supervisord.conf sysprep.inf sysprep.xml tomcat-users.xml unattend.txt unattend.xml unattended.txt unattended.xml%ESC%[0m
robocopy C:\Windows\ . /lev:5 /l /s /njh /njs /ns /nc /ndl /xj *.cer *.csr *.der *.gpg *.kdbx *.ovpn *.pfx *.pem *.p12 *.pgp *.plan *.rdg *.rhosts *config*.php *database*.php *vnc*.c*nf* *vnc*.ini *vnc*.txt *vnc*.xml *_history .git-credentials .htpasswd ConsoleHost_history.txt Dockerfile FreeSSHDservice.ini KeePass.config "Login Data" RDCMan.settings SAM SCClient.exe SiteList.xml TypedURLs TypedURLsTime access.log accessTokens.json access_tokens.db anaconda-ks.cfg azureProfile.json cesi.conf credentials credentials.db datasources.xml docker-compose.yml drives.xml elasticsearch.y*ml error.log groups.xml hostapd.conf hosts.equiv httpd.conf httpd.conf https-xampp.conf https.conf id_dsa key3.db key4.db kibana.y*ml known_hosts legacy_credentials my.cnf my.ini php.ini places.sqlite printers.xml rsyncd.conf scheduledtasks.xml server.xml services.xml setupinfo setupinfo.bak supervisord.conf sysprep.inf sysprep.xml tomcat-users.xml unattend.txt unattend.xml unattended.txt unattended.xml 2>nul
echo.
echo %ESC%[1;33m[+] robocopy C:\ . /lev:5 /l /s /njh /njs /ns /nc /ndl /xj *.cer *.csr *.der *.gpg *.kdbx *.ovpn *.pfx *.pem *.p12 *.pgp *.plan *.rdg *.rhosts *config*.php *database*.php *vnc*.c*nf* *vnc*.ini *vnc*.txt *vnc*.xml *_history .git-credentials .htpasswd ConsoleHost_history.txt Dockerfile FreeSSHDservice.ini KeePass.config "Login Data" RDCMan.settings SAM SCClient.exe SiteList.xml TypedURLs TypedURLsTime access.log accessTokens.json access_tokens.db anaconda-ks.cfg azureProfile.json cesi.conf credentials credentials.db datasources.xml docker-compose.yml drives.xml elasticsearch.y*ml error.log groups.xml hostapd.conf hosts.equiv httpd.conf httpd.conf https-xampp.conf https.conf id_dsa key3.db key4.db kibana.y*ml known_hosts legacy_credentials my.cnf my.ini php.ini places.sqlite printers.xml rsyncd.conf scheduledtasks.xml server.xml services.xml setupinfo setupinfo.bak supervisord.conf sysprep.inf sysprep.xml tomcat-users.xml unattend.txt unattend.xml unattended.txt unattended.xml /xd C:\Windows\%ESC%[0m
robocopy C:\ . /lev:5 /l /s /njh /njs /ns /nc /ndl /xj *.cer *.csr *.der *.gpg *.kdbx *.ovpn *.pfx *.pem *.p12 *.pgp *.plan *.rdg *.rhosts *config*.php *database*.php *vnc*.c*nf* *vnc*.ini *vnc*.txt *vnc*.xml *_history .git-credentials .htpasswd ConsoleHost_history.txt Dockerfile FreeSSHDservice.ini KeePass.config "Login Data" RDCMan.settings SAM SCClient.exe SiteList.xml TypedURLs TypedURLsTime access.log accessTokens.json access_tokens.db anaconda-ks.cfg azureProfile.json cesi.conf credentials credentials.db datasources.xml docker-compose.yml drives.xml elasticsearch.y*ml error.log groups.xml hostapd.conf hosts.equiv httpd.conf httpd.conf https-xampp.conf https.conf id_dsa key3.db key4.db kibana.y*ml known_hosts legacy_credentials my.cnf my.ini php.ini places.sqlite printers.xml rsyncd.conf scheduledtasks.xml server.xml services.xml setupinfo setupinfo.bak supervisord.conf sysprep.inf sysprep.xml tomcat-users.xml unattend.txt unattend.xml unattended.txt unattended.xml /xd C:\Windows\ 2>nul
echo.
echo %ESC%[1;33m[+] robocopy C:\ . /lev:10 /l /s /njh /njs /ns /nc /ndl /xj *pass* *cred* *vnc* *.c*nf* *.kdbx *secret* *db* *git* *aws* *key* *.enc *.pdf *.doc *.docx *.xls *.xlsx *.ini *.zip *bak *bak.* *.tar *.tar.gz *.7z *database* *.xml *.json *.cfg *.y*ml *.exe *_history *.txt /xd C:\windows\ /xd "*program*files*" /xd "%USERPROFILE%"%ESC%[0m
robocopy C:\ . /lev:3 /l /s /njh /njs /ns /nc /ndl /xj *pass* *cred* *vnc* *.c*nf* *.kdbx *secret* *db* *git* *aws* *key* *.enc *.pdf *.doc *.docx *.xls *.xlsx *.ini *.zip *bak *bak.* *.tar *.tar.gz *.7z *database* *.xml *.json *.cfg *.y*ml *.exe *_history *.txt /xd C:\windows\ /xd "*program*files*" /xd "%USERPROFILE%" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Credentials Search%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] cmdkey /list%ESC%[0m
cmdkey /list 2>nul
echo.
echo.
echo %ESC%[1;33m[+] vaultcmd /list%ESC%[0m
vaultcmd /list 2>nul
echo.
echo.
echo %ESC%[1;33m[+] klist%ESC%[0m
klist 2>nul
echo.
echo %ESC%[1;33m[+] type "%USERPROFILE%\.ssh\id_rsa"%ESC%[0m
type "%USERPROFILE%\.ssh\id_rsa" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a/b/s "%appdata%\Microsoft\Credentials\"%ESC%[0m
dir /a/b/s "%appdata%\Microsoft\Credentials\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a/b/s "%appdata%\Microsoft\Protect\"%ESC%[0m
dir /a/b/s "%appdata%\Microsoft\Protect\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a/b/s "%localappdata%\Microsoft\Credentials\"%ESC%[0m
dir /a/b/s "%localappdata%\Microsoft\Credentials\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a/b/s "%localappdata%\Microsoft\Protect\"%ESC%[0m
dir /a/b/s "%localappdata%\Microsoft\Protect\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query HKCU /f password /t REG_SZ /s%ESC%[0m
reg query HKCU /f password /t REG_SZ /s 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query HKLM /f password /t REG_SZ /s ^| findstr /v TargetingAttributes%ESC%[0m
reg query HKLM /f password /t REG_SZ /s 2>nul | findstr /v TargetingAttributes
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\ORL\WinVNC3\Password"%ESC%[0m
reg query "HKCU\Software\ORL\WinVNC3\Password" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\RealVNC\WinVNC4" /v password%ESC%[0m
reg query "HKLM\SOFTWARE\RealVNC\WinVNC4" /v password 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\TightVNC\Server"%ESC%[0m
reg query "HKCU\Software\TightVNC\Server" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\OpenSSH\Agent\Keys"%ESC%[0m
reg query "HKCU\Software\OpenSSH\Agent\Keys" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\SimonTatham\PuTTY\Sessions"%ESC%[0m
reg query "HKCU\Software\SimonTatham\PuTTY\Sessions" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SYSTEM\CurrentControlSet\Services\SNMP" /s%ESC%[0m
reg query "HKLM\SYSTEM\CurrentControlSet\Services\SNMP" /s 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AltDefaultDomainName%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AltDefaultDomainName 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AltDefaultPassword%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AltDefaultPassword 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AltDefaultUserName%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AltDefaultUserName 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v CACHEDLOGONSCOUNT%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v CACHEDLOGONSCOUNT 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultDomainName%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultDomainName 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName 2>nul
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Scheduled Tasks%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] schtasks /query /fo:LIST /v 2^>nul ^| findstr /ir "Task Status Author Comment ^$" ^| findstr /iv /C:"Delete Task" /C:"Stop Task"%ESC%[0m
schtasks /query /fo:LIST /v 2>nul | findstr /ir "Task Status Author Comment ^$" | findstr /iv /C:"Delete Task" /C:"Stop Task" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Running Tasks%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] tasklist /SVC%ESC%[0m
tasklist /SVC 2>nul
echo.
echo.
echo %ESC%[1;33m[+] qprocess *%ESC%[0m
qprocess * 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] All Services%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] sc query state= all ^| findstr /ir "SERVICE_NAME DISPLAY_NAME STATE ^$"%ESC%[0m
sc query state= all 2> nul | findstr /ir "SERVICE_NAME DISPLAY_NAME STATE ^$" 
::sc queryex type= service state= all
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Startups Programs%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] net start%ESC%[0m
net start 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"%ESC%[0m
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce"%ESC%[0m
reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run"%ESC%[0m
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" 2>nul
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce"%ESC%[0m
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Installed Softwares%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall ^| findstr /v "}$"%ESC%[0m
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall | findstr /v "}$" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall ^| findstr /v "}$"%ESC%[0m
reg query HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall | findstr /v "}$" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a/b "C:\Program Files\"%ESC%[0m
dir /a/b "C:\Program Files\" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] dir /a/b "C:\Program Files (x86)\"%ESC%[0m
dir /a/b "C:\Program Files (x86)\" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Driver Information%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] driverquery /v%ESC%[0m
driverquery /v 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Weak Permissions%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner -uws "Everyone" c:\* -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner -uws "Everyone" c:\* -accepteula 2>nul
echo.
echo.
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner -uws "Authenticated Users" c:\* -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner -uws "Authenticated Users" c:\* -accepteula 2>nul
echo.
echo.
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner -uws "Users" c:\* -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner -uws "Users" c:\* -accepteula 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Access Control Checks%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] reg query HKLM\System\CurrentControlSet\services\regsvc%ESC%[0m
reg query HKLM\System\CurrentControlSet\services\regsvc 2>nul
echo.
echo.
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner "%USERNAME%" -kvusw "hklm\System\CurrentControlSet\services" -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner "%USERNAME%" -kvuqsw "hklm\System\CurrentControlSet\services" -accepteula 2>nul
echo.
echo.
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner "Authenticated Users" -kswvu "hklm\System\CurrentControlSet\services" -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner "Authenticated Users" -kswvu "hklm\System\CurrentControlSet\services" -accepteula 2>nul
echo.
echo.
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner "BUILTIN\Users" -kswvu "hklm\System\CurrentControlSet\services" -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner "BUILTIN\Users" -kswvu "hklm\System\CurrentControlSet\services" -accepteula 2>nul
echo.
echo.
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner "Everyone" -kswvu "hklm\System\CurrentControlSet\services" -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner "Everyone" -kswvu "hklm\System\CurrentControlSet\services" -accepteula 2>nul
echo.
echo.
echo %ESC%[1;33m[+] C:\ProgramData\accesschk.exe -nobanner "NT AUTHORITY\INTERACTIVE" -kswvu "hklm\System\CurrentControlSet\services" -accepteula%ESC%[0m
C:\ProgramData\accesschk.exe -nobanner "NT AUTHORITY\INTERACTIVE" -kswvu "hklm\System\CurrentControlSet\services" -accepteula 2>nul
::echo.
::echo.
::echo %ESC%[1;33m[+] icacls.exe "C:\Program Files\*" 2^>nul ^| findstr "(F) (M) :\" ^| findstr ":\ everyone authenticated users todos interactive %username%" ^| findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:"%ESC%[0m
::icacls.exe "C:\Program Files\*" 2>nul | findstr "(F) (M) :\" | findstr ":\ everyone authenticated users todos interactive %username%" | findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:" 2>nul
::echo.
::echo.
::echo %ESC%[1;33m[+] icacls.exe "C:\Program Files (x86)\*" 2^>nul ^| findstr "(F) (M) :\" ^| findstr ":\ everyone authenticated users todos interactive %username%" ^| findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:"%ESC%[0m
::icacls.exe "C:\Program Files (x86)\*" 2>nul | findstr "(F) (M) :\" | findstr ":\ everyone authenticated users todos interactive %username%" | findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:" 2>nul
::echo.
::echo.
::echo %ESC%[1;33m[+] icacls.exe "C:\Windows\*" 2^>nul ^| findstr "(F) (M) :\" ^| findstr ":\ everyone authenticated users todos interactive %username%" ^| findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:"%ESC%[0m
::icacls.exe "C:\Windows\*" 2>nul | findstr "(F) (M) :\" | findstr ":\ everyone authenticated users todos \interactive %username%"|findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] icacls.exe "C:\*" 2^>nul ^| findstr "(F) (M) :\" ^| findstr ":\ everyone authenticated users todos interactive %username%" ^| findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:"%ESC%[0m
icacls.exe "C:\*" 2>nul | findstr "(F) (M) :\" | findstr ":\ everyone authenticated users todos interactive %username%" | findstr /vi "\TrustedInstaller: \Administrators: \SYSTEM: Operators: tapisrv:" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] WMIC Zone%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] wmic qfe get Caption,Description,HotFixID,InstalledOn /format:table%ESC%[0m
wmic qfe get Caption,Description,HotFixID,InstalledOn /format:table 2>nul
echo %ESC%[1;33m[+] wmic job list full /format:table%ESC%[0m
wmic job list full /format:table 2>nul
echo %ESC%[1;33m[+] wmic product get Name,InstallDate,InstallLocation,PackageCache,Vendor,Version /format:table%ESC%[0m
wmic product get Name,InstallDate,InstallLocation,PackageCache,Vendor,Version /format:table 2>nul
echo %ESC%[1;33m[+] wmic netuse list full /format:table%ESC%[0m
wmic netuse list full /format:table 2>nul
echo %ESC%[1;33m[+] wmic os get Name,Version,InstallDate,ServicePackMajorVersion,OSArchitecture /format:table%ESC%[0m
wmic os get Name,Version,InstallDate,ServicePackMajorVersion,OSArchitecture /format:table 2>nul
echo %ESC%[1;33m[+] wmic printer list status /format:table%ESC%[0m
wmic printer list status /format:table 2>nul
echo %ESC%[1;33m[+] wmic printerconfig list brief /format:table%ESC%[0m
wmic printerconfig list brief /format:table 2>nul
echo %ESC%[1;33m[+] wmic printjob list full /format:table%ESC%[0m
wmic printjob list full /format:table 2>nul
echo %ESC%[1;33m[+] wmic process get CSName,Description,ExecutablePath,ProcessId /format:table%ESC%[0m
wmic process get CSName,Description,ExecutablePath,ProcessId /format:table 2>nul
echo %ESC%[1;33m[+] wmic service get Name,PathName,StartMode,StartName /format:table%ESC%[0m
wmic service get Name,PathName,StartMode,StartName /format:table 2>nul
echo %ESC%[1;33m[+] wmic service get Name,PathName,StartMode,StartName ^| findstr /i "auto" ^| findstr /i /v "c:\windows\\" ^| findstr /i /v "''"%ESC%[0m
wmic service get Name,PathName,StartMode,StartName | findstr /i "auto" | findstr /i /v "c:\windows\\" | findstr /i /v "''" 2>nul
echo %ESC%[1;33m[+] wmic startup get Caption,Command,Location,User /format:table%ESC%[0m
wmic startup get Caption,Command,Location,User /format:table 2>nul
echo %ESC%[1;33m[+] wmic volume get Label,DeviceID,DriveLetter,FileSystem,Capacity,FreeSpace /format:table%ESC%[0m
wmic volume get Label,DeviceID,DriveLetter,FileSystem,Capacity,FreeSpace /format:table 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Powershell Information%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "$PSVERSIONTABLE" } -ErrorAction SilentlyContinue%ESC%[0m
powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "$PSVERSIONTABLE" } -ErrorAction SilentlyContinue 2>nul
echo.
echo.
echo %ESC%[1;33m[+] powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-ClipBoard" } -ErrorAction SilentlyContinue%ESC%[0m
powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-ClipBoard" } -ErrorAction SilentlyContinue 2>nul
echo.
echo.
echo %ESC%[1;33m[+] powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-History" } -ErrorAction SilentlyContinue%ESC%[0m
powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-History" } -ErrorAction SilentlyContinue 2>nul
echo.
echo.
echo %ESC%[1;33m[+] powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-Content -Path (Get-PSReadlineOption).HistorySavePath -ErrorAction SilentlyContinue" } -ErrorAction SilentlyContinue%ESC%[0m
powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-Content -Path (Get-PSReadlineOption).HistorySavePath -ErrorAction SilentlyContinue" } -ErrorAction SilentlyContinue 2>nul
echo.
echo.
echo %ESC%[1;33m[+] powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-WinEvent -LogName 'Microsoft-Windows-Powershell/Operational' -ErrorAction SilentlyContinue | where-object {$_.Message -notlike 'Error Message = System error*' -or $_.Message -notlike 'PowerShell console is ready for user input' -or $_.Message -notlike 'Windows PowerShell has started an IPC listening thread*' -r $_.Message -not like 'PowerShell console is starting up'} | Select -First 20" } -ErrorAction SilentlyContinue%ESC%[0m
powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-WinEvent -LogName 'Microsoft-Windows-Powershell/Operational' -ErrorAction SilentlyContinue | where-object {$_.Message -notlike 'Error Message = System error*' -or $_.Message -notlike 'PowerShell console is ready for user input' -or $_.Message -notlike 'Windows PowerShell has started an IPC listening thread*' -r $_.Message -not like 'PowerShell console is starting ux'} | Select -First 20" } -ErrorAction SilentlyContinue 2>nul
echo.
echo.
echo %ESC%[1;33m[+] powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-WinEvent -LogName 'windows Powershell' -ErrorAction SilentlyContinue ^| select -First 15 ^| FT" } -ErrorAction SilentlyContinue%ESC%[0m
powershell.exe -ep bypass -nop Invoke-Command -ScriptBlock { "Get-WinEvent -LogName 'windows Powershell' -ErrorAction SilentlyContinue | select -First 15 | FT" } -ErrorAction SilentlyContinue 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging"%ESC%[0m
reg query "HKCU\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\Policies\Microsoft\Windows\PowerShell\Transcription"%ESC%[0m
reg query "HKCU\Software\Policies\Microsoft\Windows\PowerShell\Transcription" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging"%ESC%[0m
reg query "HKLM\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Policies\Microsoft\Windows\PowerShell\Transcription"%ESC%[0m
reg query "HKLM\Software\Policies\Microsoft\Windows\PowerShell\Transcription" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging"%ESC%[0m
reg query "HKCU\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKCU\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription"%ESC%[0m
reg query "HKCU\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging"%ESC%[0m
reg query "HKLM\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ModuleLogging" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription"%ESC%[0m
reg query "HKLM\Software\Wow6432Node\Policies\Microsoft\Windows\PowerShell\Transcription" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine" /v PowerShellVersion%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine" /v PowerShellVersion 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Microsoft\PowerShell\3\PowerShellEngine" /v PowerShellVersion%ESC%[0m
reg query "HKLM\SOFTWARE\Microsoft\PowerShell\3\PowerShellEngine" /v PowerShellVersion 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"%ESC%[0m
reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" /v EnableScriptBlockLogging%ESC%[0m
reg query "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" /v EnableScriptBlockLogging 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] AlwaysInstallElevated%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] reg query "HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated"%ESC%[0m
reg query "HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated" 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated"%ESC%[0m
reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated" 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] WSUS Checks%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] reg query "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate" /v WUServer%ESC%[0m
reg query "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate" /v WUServer 2>nul
echo.
echo.
echo %ESC%[1;33m[+] reg query "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v UseWUServer%ESC%[0m
reg query "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v UseWUServer 2>nul
echo.
echo.


echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;31m[+] Memory Credentials%ESC%[0m
echo %ESC%[1;31m---------------------------------------------------------------------------------%ESC%[0m
echo %ESC%[1;33m[+] reg query "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest" /v UseLogonCredential%ESC%[0m
reg query "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest" /v UseLogonCredential 2>nul
echo.
echo.
echo WinEnum completed ...
