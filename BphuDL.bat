@echo off

:: TO FIND THE START OF EACH SECTION - PRESS CTRL+F AND SEARCH FOR:
:: skip1 - Twitter
:: skip2 - Afreecatv
:: skip3 - Youtube
:: skip4 - Twitch
:: skip5 - Instagram
:: skip6 - Reddit
:: skip7 - Porn
:: skip8 - Other
:: skip9 - Youtube-dl Flags
:: skip10 - Directories

:home1
cls
echo :::::::::  :::::::::  :::    ::: :::    ::: :::::::::  :::        
echo :+:    :+: :+:    :+: :+:    :+: :+:    :+: :+:    :+: :+:        
echo +:+    +:+ +:+    +:+ +:+    +:+ +:+    +:+ +:+    +:+ +:+        
echo +#++:++#+  +#++:++#+  +#++:++#++ +#+    +:+ +#+    +:+ +#+        
echo +#+    +#+ +#+        +#+    +#+ +#+    +#+ +#+    +#+ +#+        
echo #+#    #+# #+#        #+#    #+# #+#    #+# #+#    #+# #+#        
echo #########  ###        ###    ###  ########  #########  ##########
echo ======================== Version 0.1 ==============================
echo This batch file uses youtube-dl and ffmpeg to download videos from 
echo the platforms below. Please read the README.txt if you have any 
echo questions!
echo ===================================================================
echo -
echo ===================
echo  Platform:
echo ===================
echo - 
echo  1) Twitter
echo  2) AfreecaTV
echo  3) Youtube
echo  4) Twitch
echo  5) Instagram
echo  6) Reddit
echo  7) Porn
echo  8) Other
echo  9) Youtube-dl Flags
echo  D) Directories
echo  Q) Quit
echo -
echo ===================
set /p pla=Pick a Platform:
if "%pla%"=="1" goto pla1
if "%pla%"=="2" goto pla2
if "%pla%"=="3" goto pla3
if "%pla%"=="4" goto pla4
if "%pla%"=="5" goto pla5
if "%pla%"=="6" goto pla6
if "%pla%"=="7" goto pla7
if "%pla%"=="8" goto pla8
if "%pla%"=="9" goto pla9
if "%pla%"=="D" goto dir10
if "%pla%"=="d" goto dir10
if "%pla%"=="Q" goto quit1
if "%pla%"=="q" goto quit1
goto home1

::  Quit
:quit1
exit

::  skip1
:pla1
cls
echo ::::::::::: :::       ::: ::::::::::: ::::::::::: ::::::::::: :::::::::: :::::::::  
echo     :+:     :+:       :+:     :+:         :+:         :+:     :+:        :+:    :+: 
echo     +:+     +:+       +:+     +:+         +:+         +:+     +:+        +:+    +:+ 
echo     +#+     +#+  +:+  +#+     +#+         +#+         +#+     +#++:++#   +#++:++#:  
echo     +#+     +#+ +#+#+ +#+     +#+         +#+         +#+     +#+        +#+    +#+ 
echo     #+#      #+#+# #+#+#      #+#         #+#         #+#     #+#        #+#    #+# 
echo     ###       ###   ###   ###########     ###         ###     ########## ###    ### 
echo ==========================================
echo  Twitter User List:
echo ==========================================
echo  You can add frequently downloaded users..
echo  by editting the batch file and replacing 
echo  all instances of "TWITUSER-X" with the 
echo  twitter user name. CTRL+H is your friend.
echo  Otherwise just select the first option
echo ==========================================
echo -
echo  1) Download Video
echo  2) TWITUSER2
echo  3) TWITUSER4
echo  4) TWITUSER4
echo  5) TWITUSER5
echo  6) TWITUSER6
echo  Q) Main Menu
echo -
echo ===================
set /p twr=Pick a User:
if "%twr%"=="1" goto twr1
if "%twr%"=="2" goto twr2
if "%twr%"=="3" goto twr3
if "%twr%"=="4" goto twr4
if "%twr%"=="5" goto twr5
if "%twr%"=="6" goto twr6
if "%twr%"=="Q" goto home1
if "%twr%"=="q" goto home1
goto pla1

::  Download Video
:twr1
cls
echo  ================
echo   Download Video
echo  ================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P tdv1=Open Download Folder [Y/N]?
if /I "%tdv1%" EQU "Y" goto :tdv1y
if /I "%tdv1%" EQU "N" goto :tdv1n
goto :choice
:tdv1y
start Downloads\Twitter\
goto pla1
:tdv1n
goto pla1

::  TWITUSER2
:twr2
cls
echo  ==============
echo   TWITUSER2
echo  ==============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER2\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu1=Open Download Folder [Y/N]?
if /I "%twu1%" EQU "Y" goto :twu1y
if /I "%twu1%" EQU "N" goto :twu1n
goto :choice
:twu1y
start Downloads\Twitter\Users\TWITUSER2\
goto pla1
:twu1n
goto pla1

::  TWITUSER3
:twr3
cls
echo  ==============
echo   TWITUSER3
echo  ==============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER3\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu2=Open Download Folder [Y/N]?
if /I "%twu2%" EQU "Y" goto :twu2y
if /I "%twu2%" EQU "N" goto :twu2n
goto :choice
:twu2y
start Downloads\Twitter\Users\TWITUSER3\
goto pla1
:twu2n
goto pla1

::  TWITUSER4
:twr4
cls
echo  ================
echo   TWITUSER4
echo  ================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER4\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu3=Open Download Folder [Y/N]?
if /I "%twu3%" EQU "Y" goto :twu3y
if /I "%twu3%" EQU "N" goto :twu3n
goto :choice
:twu3y
start Downloads\Twitter\Users\TWITUSER4\
goto pla1
:twu3n
goto pla1

::  TWITUSER5
:twr5
cls
echo  ===============
echo   TWITUSER5
echo  ===============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER5\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu4=Open Download Folder [Y/N]?
if /I "%twu4%" EQU "Y" goto :twu4y
if /I "%twu4%" EQU "N" goto :twu4n
goto :choice
:twu4y
start Downloads\Twitter\Users\TWITUSER5\
goto pla1
:twu4n
goto pla1

::  TWITUSER6
:twr6
cls
echo  ===============
echo   TWITUSER6
echo  ===============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER6\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu5=Open Download Folder [Y/N]?
if /I "%twu5%" EQU "Y" goto :twu5y
if /I "%twu5%" EQU "N" goto :twu5n
goto :choice
:twu5y
start Downloads\Twitter\Users\TWITUSER6\
goto pla1
:twu5n
goto pla1

:exit
@exit

::  skip2
:pla2
cls
echo     :::     :::::::::: :::::::::  :::::::::: :::::::::: ::::::::      ::: ::::::::::: :::     ::: 
echo   :+: :+:   :+:        :+:    :+: :+:        :+:       :+:    :+:   :+: :+:   :+:     :+:     :+: 
echo  +:+   +:+  +:+        +:+    +:+ +:+        +:+       +:+         +:+   +:+  +:+     +:+     +:+ 
echo +#++:++#++: :#::+::#   +#++:++#:  +#++:++#   +#++:++#  +#+        +#++:++#++: +#+     +#+     +:+ 
echo +#+     +#+ +#+        +#+    +#+ +#+        +#+       +#+        +#+     +#+ +#+      +#+   +#+  
echo #+#     #+# #+#        #+#    #+# #+#        #+#       #+#    #+# #+#     #+# #+#       #+#+#+#   
echo ###     ### ###        ###    ### ########## ########## ########  ###     ### ###         ###     
echo ============================================
echo  Streamer List:
echo ============================================
echo  You can add frequently downloaded users..
echo  by editting the batch file and replacing 
echo  all instances of "ATVUSER-X" with the 
echo  AfreecaTV user name. CTRL+H is your friend.
echo  Otherwise just select the first option
echo ============================================
echo -
echo  1) Download Video
echo  2) ATVUSER2
echo  3) ATVUSER3
echo  4) ATVUSER4
echo  5) ATVUSER5
echo  6) ATVUSER6
echo  Q) Main Menu
echo -
echo ====================
set /p op=Pick a streamer:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="Q" goto home1
if "%op%"=="q" goto home1
goto pla2

::  Download Video
:op1
cls
echo  ================
echo   Download Video
echo  ================
set "url=%~1"
set "user=%~1"
set "pwd=%~1"
if not defined url set /p "url=Enter URL: "
if not defined user set /p "user=Enter AfreecaTV Username: "
if not defined pwd set /p "pwd=Enter AfreecaTV Password: "
youtube-dl -F -u %user% -p %pwd% %url% &
set "hls=%~1"
set "spc=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-" "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\[%spc%]-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P adv1=Open Download Folder [Y/N]?
if /I "%adv1%" EQU "Y" goto :adv1y
if /I "%adv1%" EQU "N" goto :adv1n
goto :choice
:adv1y
start Downloads\AfreecaTV\
goto pla2
:adv1n
goto pla2

::  ATVUSER2
:op2
cls
echo  =============
echo   ATVUSER2
echo  =============
set "url=%~1"
set "user=%~1"
set "pwd=%~1"
if not defined url set /p "url=Enter URL: "
if not defined user set /p "user=Enter AfreecaTV Username: "
if not defined pwd set /p "pwd=Enter AfreecaTV Password: "
youtube-dl -F -u %user% -p %pwd% %url% &
set "hls=%~1"
set "spc=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-" "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER2\[%spc%]-ATVUSER2-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv2=Open Download Folder [Y/N]?
if /I "%atv2%" EQU "Y" goto :atv2y
if /I "%atv2%" EQU "N" goto :atv2n
goto :choice
:atv2y
start Downloads\AfreecaTV\Users\ATVUSER2\
goto pla2
:atv2n
goto pla2

::  ATVUSER3
:op3
cls
echo  ===============
echo   ATVUSER3 
echo  ===============
set "url=%~1"
set "user=%~1"
set "pwd=%~1"
if not defined url set /p "url=Enter URL: "
if not defined user set /p "user=Enter AfreecaTV Username: "
if not defined pwd set /p "pwd=Enter AfreecaTV Password: "
youtube-dl -F -u %user% -p %pwd% %url% &
set "hls=%~1"
set "spc=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-" "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER3\[%spc%]-ATVUSER3-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv3=Open Download Folder [Y/N]?
if /I "%atv3%" EQU "Y" goto :atv3y
if /I "%atv3%" EQU "N" goto :atv3n
goto :choice
:atv3y
start Downloads\AfreecaTV\Users\ATVUSER3\
goto pla2
:atv3n
goto pla2

::  ATVUSER4
:op4
cls
echo  ==============
echo   ATVUSER4
echo  ==============
set "url=%~1"
set "user=%~1"
set "pwd=%~1"
if not defined url set /p "url=Enter URL: "
if not defined user set /p "user=Enter AfreecaTV Username: "
if not defined pwd set /p "pwd=Enter AfreecaTV Password: "
youtube-dl -F -u %user% -p %pwd% %url% &
set "hls=%~1"
set "spc=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-" "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER4\[%spc%]-ATVUSER4-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv4=Open Download Folder [Y/N]?
if /I "%atv4%" EQU "Y" goto :atv4y
if /I "%atv4%" EQU "N" goto :atv4n
goto :choice
:atv4y
start Downloads\AfreecaTV\Users\ATVUSER4\
goto pla2
:atv4n
goto pla2

::  ATVUSER-
:op5
cls
echo  ==============
echo   ATVUSER5
echo  ==============
set "url=%~1"
set "user=%~1"
set "pwd=%~1"
if not defined url set /p "url=Enter URL: "
if not defined user set /p "user=Enter AfreecaTV Username: "
if not defined pwd set /p "pwd=Enter AfreecaTV Password: "
youtube-dl -F -u %user% -p %pwd% %url% &
set "hls=%~1"
set "spc=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-" "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER5\[%spc%]ATVUSER5-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv5=Open Download Folder [Y/N]?
if /I "%atv5%" EQU "Y" goto :atv5y
if /I "%atv5%" EQU "N" goto :atv5n
goto :choice
:atv5y
start Downloads\AfreecaTV\Users\ATVUSER5\
goto pla2
:atv5n
goto pla2

::  ATVUSER6
:op6
cls
echo  =============
echo   ATVUSER6
echo  =============
set "url=%~1"
set "user=%~1"
set "pwd=%~1"
if not defined url set /p "url=Enter URL: "
if not defined user set /p "user=Enter AfreecaTV Username: "
if not defined pwd set /p "pwd=Enter AfreecaTV Password: "
youtube-dl -F -u %user% -p %pwd% %url% &
set "hls=%~1"
set "spc=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-" "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER6\[%spc%]ATVUSER6-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv6=Open Download Folder [Y/N]?
if /I "%atv6%" EQU "Y" goto :atv6y
if /I "%atv6%" EQU "N" goto :atv6n
goto :choice
:atv6y
start Downloads\AfreecaTV\Users\ATVUSER6\
goto pla2
:atv6n
goto pla2

:exit
@exit

::  skip3
:pla3
cls
echo :::   :::  ::::::::  :::    ::: ::::::::::: :::    ::: :::::::::  :::::::::: 
echo :+:   :+: :+:    :+: :+:    :+:     :+:     :+:    :+: :+:    :+: :+:        
echo  +:+ +:+  +:+    +:+ +:+    +:+     +:+     +:+    +:+ +:+    +:+ +:+        
echo   +#++:   +#+    +:+ +#+    +:+     +#+     +#+    +:+ +#++:++#+  +#++:++#   
echo    +#+    +#+    +#+ +#+    +#+     +#+     +#+    +#+ +#+    +#+ +#+        
echo    #+#    #+#    #+# #+#    #+#     #+#     #+#    #+# #+#    #+# #+#        
echo    ###     ########   ########      ###      ########  #########  ########## 
echo ====================================================================================================================
echo  Age Restricted or not?
echo  Age Restricted requires YTcookies.txt - See README.TXT
echo ====================================================================================================================
echo -
echo 1) Non-Age Restricted
echo 2) Age Restricted
echo Q) Main Menu
echo -
echo ====================================================================================================================
set /p arv=Pick an Option:
if "%arv%"=="1" goto pla3a
if "%arv%"=="2" goto pla3b
if "%arv%"=="Q" goto home1
if "%arv%"=="q" goto home1
goto pla3

::  skip3a
:pla3a
cls
echo :::   :::  ::::::::  :::    ::: ::::::::::: :::    ::: :::::::::  :::::::::: 
echo :+:   :+: :+:    :+: :+:    :+:     :+:     :+:    :+: :+:    :+: :+:        
echo  +:+ +:+  +:+    +:+ +:+    +:+     +:+     +:+    +:+ +:+    +:+ +:+        
echo   +#++:   +#+    +:+ +#+    +:+     +#+     +#+    +:+ +#++:++#+  +#++:++#   
echo    +#+    +#+    +#+ +#+    +#+     +#+     +#+    +#+ +#+    +#+ +#+        
echo    #+#    #+#    #+# #+#    #+#     #+#     #+#    #+# #+#    #+# #+#        
echo    ###     ########   ########      ###      ########  #########  ########## 
echo ====================================================================================================================
echo  Non-Age Restricted
echo  Youtube Video Type:
echo ====================================================================================================================
echo -
echo  1)  Video - 720p
echo  2)  Video - 1080p
echo  3)  Video - Highest Resolution
echo  4)  Video Playlist - 720p
echo  5)  Video Playlist - 1080p
echo  6)  Video Playlist - Highest Resolution
echo  7)  Music Video - 720p
echo  8)  Music Video - 1080p
echo  9)  Music Video - Highest Resolution
echo  10) Music Video Playlist - 720p
echo  11) Music Video Playlist - 1080p
echo  12) Music Video Playlist - Highest Resolution
echo  13) Music - Audio Only
echo  14) Music Playlist - Audio Only
echo  15) Music - Audio Only from TXT File
echo  Q)  Main Menu
echo -
echo ====================================================================================================================
set /p yta=Pick a Type:
if "%yta%"=="1" goto yta1
if "%yta%"=="2" goto yta2
if "%yta%"=="3" goto yta3
if "%yta%"=="4" goto yta4
if "%yta%"=="5" goto yta5
if "%yta%"=="6" goto yta6
if "%yta%"=="7" goto yta7
if "%yta%"=="8" goto yta8
if "%yta%"=="9" goto yta9
if "%yta%"=="10" goto yta10
if "%yta%"=="11" goto yta11
if "%yta%"=="12" goto yta12
if "%yta%"=="13" goto yta13
if "%yta%"=="14" goto yta14
if "%yta%"=="15" goto yta15
if "%yta%"=="Q" goto home1
if "%yta%"=="q" goto home1
goto pla3a

::  Video - 720p
:yta1
cls
echo  ===========================
echo         Video - 720p
echo        Save Location:
echo   BphuDL\Downloads\YT\720p\
echo  ===========================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YT\720p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P av720=Open Download Folder [Y/N]?
if /I "%av720%" EQU "Y" goto :av720y
if /I "%av720%" EQU "N" goto :av720n
goto :choice
:av720y
start Downloads\YT\720p\
goto pla3a
:av720n
goto pla3a

::  Video - 1080p
:yta2
cls
echo  ============================
echo         Video - 1080p
echo         Save Location:
echo   BphuDL\Downloads\YT\1080p\
echo  ============================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YT\1080p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P av1080=Open Download Folder [Y/N]?
if /I "%av1080%" EQU "Y" goto :av1080y
if /I "%av1080%" EQU "N" goto :av1080n
goto :choice
:av1080y
start Downloads\YT\1080p\
goto pla3a
:av1080n
goto pla3a

::  Video - Highest Resolution
:yta3
cls
echo  =============================
echo   Video - Highest Resolution
echo        Save Location:
echo    BphuDL\Downloads\YT\HR\
echo  ==============================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -f bestvideo+bestaudio -o Downloads\YT\HR\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P abvhr=Open Download Folder [Y/N]?
if /I "%abvhr%" EQU "Y" goto :abvhry
if /I "%abvhr%" EQU "N" goto :abvhrn
goto :choice
:abvhry
start Downloads\YT\HR\
goto pla3a
:abvhrn
goto pla3a

::  Video Playlist - 720p
:yta4
cls
echo  ============================================
echo            Video Playlist- 720p
echo               Save Location:
echo   BphuDL\Downloads\YT\720p\*You_Pick_Name*\
echo  ============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YT\720p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url% &
TIMEOUT 1
:choice
set /P abvp720=Open Download Folder [Y/N]?
if /I "%abvp720%" EQU "Y" goto :abvp720y
if /I "%abvp720%" EQU "N" goto :abvp720n
goto :choice
:abvp720y
start Downloads\YT\720p\
goto pla3a
:abvp720n
goto pla3a

::  Video Playlist - 1080p
:yta5
cls
echo  ============================================
echo           Video Playlist - 1080p
echo               Save Location:
echo   BphuDL\Downloads\YT\1080p\*You_Pick_Name*\
echo  ============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YT\1080p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P abvp1080=Open Download Folder [Y/N]?
if /I "%abvp1080%" EQU "Y" goto :abvp1080y
if /I "%abvp1080%" EQU "N" goto :abvp1080n
goto :choice
:abvp1080y
start Downloads\YT\1080p\
goto pla3a
:abvp1080n
goto pla3a

::  Video Playlist - Highest Resolution
:yta6
cls
echo  ==========================================
echo    Video Playlist - Highest Resolution
echo              Save Location:
echo   BphuDL\Downloads\YT\HR\*You_Pick_Name*\
echo  ==========================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist -f bestvideo+bestaudio -o Downloads\YT\HR\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P avphr=Open Download Folder [Y/N]?
if /I "%avphr%" EQU "Y" goto :avphry
if /I "%avphr%" EQU "N" goto :avphrn
goto :choice
:avphry
start Downloads\YT\HR\
goto pla3a
:avphrn
goto pla3a

::  Msuic Video - 720p
:yta7
cls
echo  ================================
echo         Music Video - 720p
echo           Save Location:
echo   BphuDL\Downloads\YTMusic\720p\
echo  ================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YTMusic\720p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url% &
TIMEOUT 1
:choice
set /P am720=Open Download Folder [Y/N]?
if /I "%am720%" EQU "Y" goto :am720y
if /I "%am720%" EQU "N" goto :am720n
goto :choice
:am720y
start Downloads\YTMusic\720p\
goto pla3a
:am720n
goto pla3a

::  Music Video - 1080p
:yta8
cls
echo  =================================
echo       Music Video - 1080p
echo         Save Location:
echo   BphuDL\Downloads\YTMusic\1080p\
echo  =================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YTMusic\1080p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P am1080=Open Download Folder [Y/N]?
if /I "%am1080%" EQU "Y" goto :am1080y
if /I "%am1080%" EQU "N" goto :am1080n
goto :choice
:am1080y
start Downloads\YTMusic\1080p\
goto pla3a
:am1080n
goto pla3a

::  Music Video - Highest Resolution
:yta9
cls
echo  ==================================
echo   Music Video - Highest Resolution
echo           Save Location:
echo    BphuDL\Downloads\YTMusic\HR\
echo  ==================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -f bestvideo+bestaudio -o Downloads\YTMusic\HR\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P mhr=Open Download Folder [Y/N]?
if /I "%amhr%" EQU "Y" goto :amhry
if /I "%amhr%" EQU "N" goto :amhrn
goto :choice
:amhry
start Downloads\YTMusic\HR\
goto pla3a
:amhrn
goto pla3a

::  Music Video Playlist - 720p
:yta10
cls
echo  =================================================
echo           Music Video Playlist - 720p
echo                 Save Location:
echo   BphuDL\Downloads\YTMusic\720p\*You_Pick_Name*\
echo  =================================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YTMusic\720p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url% &
TIMEOUT 1
:choice
set /P amp720=Open Download Folder [Y/N]?
if /I "%amp720%" EQU "Y" goto :amp720y
if /I "%amp720%" EQU "N" goto :amp720n
goto :choice
:amp720y
start Downloads\YTMusic\720p\
goto pla3a
:amp720n
goto pla3a

::  Music Video Playlist - 1080p
:yta11
cls
echo  ==================================================
echo            Music Video Playlist - 1080p
echo                 Save Location:
echo   BphuDL\Downloads\YTMusic\1080p\*You_Pick_Name*\
echo  ==================================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YTMusic\1080p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P amp1080=Open Download Folder [Y/N]?
if /I "%amp1080%" EQU "Y" goto :amp1080y
if /I "%amp1080%" EQU "N" goto :amp1080n
goto :choice
:amp1080y
start Downloads\YTMusic\1080p\
goto pla3
:amp1080n
goto pla3

::  Music Video Playlist - Highest Resolution
:yta12
cls
echo  ===============================================
echo    Music Video Playlist - Highest Resolution
echo               Save Location:
echo   BphuDL\Downloads\YTMusic\HR\*You_Pick_Name*\
echo  ===============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist -f bestvideo+bestaudio -o Downloads\YTMusic\HR\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P amphr=Open Download Folder [Y/N]?
if /I "%amphr%" EQU "Y" goto :amphry
if /I "%amphr%" EQU "N" goto :amphrn
goto :choice
:amphry
start Downloads\YTMusic\HR\
goto pla3a
:amphrn
goto pla3a

::  Music - Audio Only 
:yta13
cls
echo  ======================================
echo            Music - Audio Only 
echo              Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\
echo  ======================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -o Downloads\YTMusic\AudioOnly\%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata %url%
TIMEOUT 1
:choice
set /P amao=Open Download Folder [Y/N]?
if /I "%amao%" EQU "Y" goto :amaoy
if /I "%amao%" EQU "N" goto :amaon
goto :choice
:amaoy
start Downloads\YTMusic\AudioOnly\
goto pla3a
:amaon
goto pla3a

::  Music Playlist - Audio Only 
:yta14
cls
echo  ======================================================
echo              Music Playlist - Audio Only 
echo                    Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\*You_Pick_Name*\
echo  ======================================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist -o Downloads\YTMusic\AudioOnly\%%(playlist)s/%%(playlist_index)s-%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata %url%
TIMEOUT 1
:choice
set /P ampao=Open Download Folder [Y/N]?
if /I "%ampao%" EQU "Y" goto :ampaoy
if /I "%ampao%" EQU "N" goto :ampaon
goto :choice
:ampaoy
start Downloads\YTMusic\AudioOnly\
goto pla3a
:ampaon
goto pla3a

::  Music - Audio Only from TXT File
:yta15
cls
echo  =====================================
echo    Music - Audio Only from TXT File
echo            Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\
echo  =====================================
youtube-dl --no-playlist -o Downloads\YTMusic\AudioOnly\%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata -a AudioOnlyDownloadList.txt 
TIMEOUT 1
:choice
set /P amaot=Open Download Folder [Y/N]?
if /I "%amaot%" EQU "Y" goto :amaoty
if /I "%amaot%" EQU "N" goto :amaotn
goto :choice
:amaoty
start Downloads\YTMusic\AudioOnly\
goto pla3a
:amaotn
goto pla3a

:exit
@exit

::  skip3
:pla3b
cls
echo :::   :::  ::::::::  :::    ::: ::::::::::: :::    ::: :::::::::  :::::::::: 
echo :+:   :+: :+:    :+: :+:    :+:     :+:     :+:    :+: :+:    :+: :+:        
echo  +:+ +:+  +:+    +:+ +:+    +:+     +:+     +:+    +:+ +:+    +:+ +:+        
echo   +#++:   +#+    +:+ +#+    +:+     +#+     +#+    +:+ +#++:++#+  +#++:++#   
echo    +#+    +#+    +#+ +#+    +#+     +#+     +#+    +#+ +#+    +#+ +#+        
echo    #+#    #+#    #+# #+#    #+#     #+#     #+#    #+# #+#    #+# #+#        
echo    ###     ########   ########      ###      ########  #########  ########## 
echo ====================================================================================================================
echo  Age Restricted requires YTcookies.txt - See README.TXT
echo  Youtube Video Type:
echo ====================================================================================================================
echo -
echo  1)  Video - 720p
echo  2)  Video - 1080p
echo  3)  Video - Highest Resolution
echo  4)  Video Playlist - 720p
echo  5)  Video Playlist - 1080p
echo  6)  Video Playlist - Highest Resolution
echo  7)  Music Video - 720p
echo  8)  Music Video - 1080p
echo  9)  Music Video - Highest Resolution
echo  10) Music Video Playlist - 720p
echo  11) Music Video Playlist - 1080p
echo  12) Music Video Playlist - Highest Resolution
echo  13) Music - Audio Only
echo  14) Music Playlist - Audio Only
echo  15) Music - Audio Only from TXT File
echo  Q)  Main Menu
echo -
echo ====================================================================================================================
set /p ytb=Pick a Type:
if "%ytb%"=="1" goto ytb1
if "%ytb%"=="2" goto ytb2
if "%ytb%"=="3" goto ytb3
if "%ytb%"=="4" goto ytb4
if "%ytb%"=="5" goto ytb5
if "%ytb%"=="6" goto ytb6
if "%ytb%"=="7" goto ytb7
if "%ytb%"=="8" goto ytb8
if "%ytb%"=="9" goto ytb9
if "%ytb%"=="10" goto ytb10
if "%ytb%"=="11" goto ytb11
if "%ytb%"=="12" goto ytb12
if "%ytb%"=="13" goto ytb13
if "%ytb%"=="14" goto ytb14
if "%ytb%"=="15" goto ytb15
if "%ytb%"=="Q" goto home1
if "%ytb%"=="q" goto home1
goto pla3b

::  Video - 720p
:ytb1
cls
echo  ===========================
echo         Video - 720p
echo        Save Location:
echo   BphuDL\Downloads\YT\720p\
echo  ===========================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist --cookies cookies\YTcookies.txt -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YT\720p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P bv720=Open Download Folder [Y/N]?
if /I "%bv720%" EQU "Y" goto :bv720y
if /I "%bv720%" EQU "N" goto :bv720n
goto :choice
:bv720y
start Downloads\YT\720p\
goto pla3b
:bv720n
goto pla3b

::  Video - 1080p
:ytb2
cls
echo  ============================
echo         Video - 1080p
echo         Save Location:
echo   BphuDL\Downloads\YT\1080p\
echo  ============================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist --cookies YTcookies.txt -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YT\1080p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P bv1080=Open Download Folder [Y/N]?
if /I "%bv1080%" EQU "Y" goto :bv1080y
if /I "%bv1080%" EQU "N" goto :bv1080n
goto :choice
:bv1080y
start Downloads\YT\1080p\
goto pla3b
:bv1080n
goto pla3b

::  Video - Highest Resolution
:ytb3
cls
echo  =============================
echo   Video - Highest Resolution
echo        Save Location:
echo    BphuDL\Downloads\YT\HR\
echo  ==============================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist --cookies YTcookies.txt -f bestvideo+bestaudio -o Downloads\YT\HR\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P bvhr=Open Download Folder [Y/N]?
if /I "%bvhr%" EQU "Y" goto :bvhry
if /I "%bvhr%" EQU "N" goto :bvhrn
goto :choice
:bvhry
start Downloads\YT\HR\
goto pla3b
:bvhrn
goto pla3b

::  Video Playlist - 720p
:ytb4
cls
echo  ============================================
echo            Video Playlist- 720p
echo               Save Location:
echo   BphuDL\Downloads\YT\720p\*You_Pick_Name*\
echo  ============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist --cookies YTcookies.txt -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YT\720p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url% &
TIMEOUT 1
:choice
set /P bvp720=Open Download Folder [Y/N]?
if /I "%bvp720%" EQU "Y" goto :bvp720y
if /I "%bvp720%" EQU "N" goto :bvp720n
goto :choice
:bvp720y
start Downloads\YT\720p\
goto pla3b
:bvp720n
goto pla3b

::  Video Playlist - 1080p
:ytb5
cls
echo  ============================================
echo           Video Playlist - 1080p
echo               Save Location:
echo   BphuDL\Downloads\YT\1080p\*You_Pick_Name*\
echo  ============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist --cookies YTcookies.txt -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YT\1080p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P bvp1080=Open Download Folder [Y/N]?
if /I "%bvp1080%" EQU "Y" goto :bvp1080y
if /I "%bvp1080%" EQU "N" goto :bvp1080n
goto :choice
:bvp1080y
start Downloads\YT\1080p\
goto pla3b
:bvp1080n
goto pla3b

::  Video Playlist - Highest Resolution
:ytb6
cls
echo  ==========================================
echo    Video Playlist - Highest Resolution
echo              Save Location:
echo   BphuDL\Downloads\YT\HR\*You_Pick_Name*\
echo  ==========================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist --cookies YTcookies.txt -f bestvideo+bestaudio -o Downloads\YT\HR\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P bvphr=Open Download Folder [Y/N]?
if /I "%bvphr%" EQU "Y" goto :bvphry
if /I "%bvphr%" EQU "N" goto :bvphrn
goto :choice
:bvphry
start Downloads\YT\HR\
goto pla3b
:bvphrn
goto pla3b

::  Msuic Video - 720p
:ytb7
cls
echo  ================================
echo         Music Video - 720p
echo           Save Location:
echo   BphuDL\Downloads\YTMusic\720p\
echo  ================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist --cookies YTcookies.txt -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YTMusic\720p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url% &
TIMEOUT 1
:choice
set /P bm720=Open Download Folder [Y/N]?
if /I "%bm720%" EQU "Y" goto :bm720y
if /I "%bm720%" EQU "N" goto :bm720n
goto :choice
:bm720y
start Downloads\YTMusic\720p\
goto pla3b
:bm720n
goto pla3b

::  Music Video - 1080p
:ytb8
cls
echo  =================================
echo       Music Video - 1080p
echo         Save Location:
echo   BphuDL\Downloads\YTMusic\1080p\
echo  =================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist --cookies YTcookies.txt -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YTMusic\1080p\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P bm1080=Open Download Folder [Y/N]?
if /I "%bm1080%" EQU "Y" goto :bm1080y
if /I "%bm1080%" EQU "N" goto :bm1080n
goto :choice
:bm1080y
start Downloads\YTMusic\1080p\
goto pla3b
:bm1080n
goto pla3b

::  Music Video - Highest Resolution
:ytb9
cls
echo  ==================================
echo   Music Video - Highest Resolution
echo           Save Location:
echo    BphuDL\Downloads\YTMusic\HR\
echo  ==================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist --cookies YTcookies.txt -f bestvideo+bestaudio -o Downloads\YTMusic\HR\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P bmhr=Open Download Folder [Y/N]?
if /I "%bmhr%" EQU "Y" goto :bmhry
if /I "%bmhr%" EQU "N" goto :bmhrn
goto :choice
:bmhry
start Downloads\YTMusic\HR\
goto pla3b
:bmhrn
goto pla3b

::  Music Video Playlist - 720p
:ytb10
cls
echo  =================================================
echo           Music Video Playlist - 720p
echo                 Save Location:
echo   BphuDL\Downloads\YTMusic\720p\*You_Pick_Name*\
echo  =================================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist --cookies YTcookies.txt -f "bestvideo[height<=720]+bestaudio[ext=m4a]" -o Downloads\YTMusic\720p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url% &
TIMEOUT 1
:choice
set /P bmp720=Open Download Folder [Y/N]?
if /I "%bmp720%" EQU "Y" goto :bmp720y
if /I "%bmp720%" EQU "N" goto :bmp720n
goto :choice
:bmp720y
start Downloads\YTMusic\720p\
goto pla3b
:bmp720n
goto pla3b

::  Music Video Playlist - 1080p
:ytb11
cls
echo  ==================================================
echo            Music Video Playlist - 1080p
echo                 Save Location:
echo   BphuDL\Downloads\YTMusic\1080p\*You_Pick_Name*\
echo  ==================================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist --cookies YTcookies.txt -f "bestvideo[height<=1080]+bestaudio[ext=m4a]" -o Downloads\YTMusic\1080p\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P bmp1080=Open Download Folder [Y/N]?
if /I "%bmp1080%" EQU "Y" goto :bmp1080y
if /I "%bmp1080%" EQU "N" goto :bmp1080n
goto :choice
:bmp1080y
start Downloads\YTMusic\1080p\
goto pla3b
:bmp1080n
goto pla3b

::  Music Video Playlist - Highest Resolution
:ytb12
cls
echo  ===============================================
echo    Music Video Playlist - Highest Resolution
echo               Save Location:
echo   BphuDL\Downloads\YTMusic\HR\*You_Pick_Name*\
echo  ===============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist --cookies YTcookies.txt -f bestvideo+bestaudio -o Downloads\YTMusic\HR\%%(playlist)s/%%(playlist_index)s-%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mkv --add-metadata %url%
TIMEOUT 1
:choice
set /P bmphr=Open Download Folder [Y/N]?
if /I "%bmphr%" EQU "Y" goto :bmphry
if /I "%bmphr%" EQU "N" goto :bmphrn
goto :choice
:bmphry
start Downloads\YTMusic\HR\
goto pla3b
:bmphrn
goto pla3b

::  Music - Audio Only 
:ytb13
cls
echo  ======================================
echo            Music - Audio Only 
echo              Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\
echo  ======================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist --cookies YTcookies.txt -o Downloads\YTMusic\AudioOnly\%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata %url%
TIMEOUT 1
:choice
set /P bmao=Open Download Folder [Y/N]?
if /I "%bmao%" EQU "Y" goto :bmaoy
if /I "%bmao%" EQU "N" goto :bmaon
goto :choice
:bmaoy
start Downloads\YTMusic\AudioOnly\
goto pla3b
:bmaon
goto pla3b

::  Music Playlist - Audio Only 
:ytb14
cls
echo  ======================================================
echo              Music Playlist - Audio Only 
echo                    Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\*You_Pick_Name*\
echo  ======================================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --yes-playlist --cookies YTcookies.txt -o Downloads\YTMusic\AudioOnly\%%(playlist)s/%%(playlist_index)s-%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata %url%
TIMEOUT 1
:choice
set /P bmpao=Open Download Folder [Y/N]?
if /I "%bmpao%" EQU "Y" goto :bmpaoy
if /I "%bmpao%" EQU "N" goto :bmpaon
goto :choice
:bmpaoy
start Downloads\YTMusic\AudioOnly\
goto pla3b
:bmpaon
goto pla3b

::  Music - Audio Only from TXT File
:ytb15
cls
echo  =====================================
echo    Music - Audio Only from TXT File
echo            Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\
echo  =====================================
youtube-dl --no-playlist --cookies YTcookies.txt -o Downloads\YTMusic\AudioOnly\%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata -a AudioOnlyDownloadList.txt 
TIMEOUT 1
:choice
set /P bmaot=Open Download Folder [Y/N]?
if /I "%bmaot%" EQU "Y" goto :bmaoty
if /I "%bmaot%" EQU "N" goto :bmaotn
goto :choice
:bmaoty
start Downloads\YTMusic\AudioOnly\
goto pla3b
:bmaotn
goto pla3b

:exit
@exit

::  skip4
:pla4
cls
echo ::::::::::: :::       ::: ::::::::::: ::::::::::: ::::::::  :::    ::: 
echo     :+:     :+:       :+:     :+:         :+:    :+:    :+: :+:    :+: 
echo     +:+     +:+       +:+     +:+         +:+    +:+        +:+    +:+ 
echo     +#+     +#+  +:+  +#+     +#+         +#+    +#+        +#++:++#++ 
echo     +#+     +#+ +#+#+ +#+     +#+         +#+    +#+        +#+    +#+ 
echo     #+#      #+#+# #+#+#      #+#         #+#    #+#    #+# #+#    #+# 
echo     ###       ###   ###   ###########     ###     ########  ###    ### 
echo ======================================
echo  Play or Save
echo ======================================
echo - 
echo  1) Save Clip
echo  2) Save a Stream While They are Live
echo  3) Play a Live Stream in CMD
echo  Q) Main Menu
echo -
echo ======================================
set /p tlv=Pick an Option:
if "%tlv%"=="1" goto tlv1
if "%tlv%"=="2" goto tlv2
if "%tlv%"=="3" goto tlv3
if "%tlv%"=="Q" goto home1
if "%tlv%"=="q" goto home1
goto pla4

:: Save Clip
:tlv1
cls
echo ===========
echo  Save Clip
echo ===========
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
set "spc=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "%hls%" -o Downloads\Twitch\Clips\[%%(creator)s-%spc%]-%%(title)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P tc1=Open Download Folder [Y/N]?
if /I "%tc1%" EQU "Y" goto :tc1y
if /I "%tc1%" EQU "N" goto :tc1n
goto :choice
:tc1y
start Downloads\Twitch\Clips\
goto pla4
:tc1n
goto pla4

::  Live Stream Save
:tlv2
cls
echo ===============================================================================================================
echo  Live Stream Save
echo  Go to https://pwn.sh/tools/getstream.html and put in the stream URL [example: https://www.twitch.tv/jinnytty]
echo  Right click the Quality that you want [example: 720p_alt] and select "Copy Link Location"
echo ===============================================================================================================
set "url=%~1"
set "name=%~1"
if not defined url set /p "url=Enter copied URL from https://pwn.sh/tools/: "
if not defined name set /p "name=Enter Output Name [No Spaces, Use Underscores]: "
ffmpeg -i "%url%" -vcodec copy -acodec copy Downloads\Twitch\LiveStreams\%name%.mp4"
pause

::  Live Stream Play
:tlv3
cls
echo ===============================================================================================================
echo  Live Stream Play
echo  Go to https://pwn.sh/tools/getstream.html and put in the stream URL [example: https://www.twitch.tv/jinnytty]
echo  Right click the Quality that you want [example: 720p_alt] and select "Copy Link Location"
echo ===============================================================================================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
ffplay -i "%url%"

:exit
@exit

::  skip5
:pla5
cls
echo ::::::::::: ::::    :::  :::::::: ::::::::::: :::     
echo     :+:     :+:+:   :+: :+:    :+:    :+:   :+: :+:   
echo     +:+     :+:+:+  +:+ +:+           +:+  +:+   +:+  
echo     +#+     +#+ +:+ +#+ +#++:++#++    +#+ +#++:++#++: 
echo     +#+     +#+  +#+#+#        +#+    +#+ +#+     +#+ 
echo     #+#     #+#   #+#+# #+#    #+#    #+# #+#     #+# 
echo ########### ###    ####  ########     ### ###     ### 
echo ================================================
echo  As of now, this cannot download Insta Stories,
echo       only videos they post to their page
echo                 Save Location:
echo           BphuDL/Downloads/Instagram
echo ================================================
echo -
echo  1) Download Video
echo  Q) Main Menu
echo -
echo ================================================
set /p inst=Pick an Option:
if "%inst%"=="1" goto inst1
if "%inst%"=="Q" goto home1
if "%inst%"=="q" goto home1
goto pla5

::  Instagram
:inst1
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -o Downloads\Instagram\%%(uploader_id)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P oth1=Open Download Folder [Y/N]?
if /I "%oth1%" EQU "Y" goto :oth1y
if /I "%oth1%" EQU "N" goto :oth1n
goto :choice
:oth1y
start Downloads\Instagram\
goto pla5
:oth1n
goto pla5

:exit
@exit

::  skip6
:pla6
cls
echo :::::::::  :::::::::: :::::::::  ::::::::: ::::::::::: ::::::::::: 
echo :+:    :+: :+:        :+:    :+: :+:    :+:    :+:         :+:     
echo +:+    +:+ +:+        +:+    +:+ +:+    +:+    +:+         +:+     
echo +#++:++#:  +#++:++#   +#+    +:+ +#+    +:+    +#+         +#+     
echo +#+    +#+ +#+        +#+    +#+ +#+    +#+    +#+         +#+     
echo #+#    #+# #+#        #+#    #+# #+#    #+#    #+#         #+#     
echo ###    ### ########## #########  ######### ###########     ###     
echo ==========================
echo           Reddit 
echo       Save Location:
echo  BphuDL\Downloads\Reddit\
echo ==========================
echo -
echo  1) Download Video
echo  Q) Main Menu
echo -
echo ==========================
set /p redd=Pick an Option:
if "%redd%"=="1" goto redd1
if "%redd%"=="Q" goto home1
if "%redd%"=="q" goto home1
goto :pla6

::  Download Video
:redd1
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -o Downloads\Reddit\[%%(uploader)s]-%%(title)s--%%(display_id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P red1=Open Download Folder [Y/N]?
if /I "%red1%" EQU "Y" goto :red1y
if /I "%red1%" EQU "N" goto :red1n
goto :choice
:red1y
start Downloads\Reddit\
goto pla6
:red1n
goto pla6

:exit
@exit

::  skip7
:pla7
cls
echo :::::::::   ::::::::  :::::::::  ::::    ::: 
echo :+:    :+: :+:    :+: :+:    :+: :+:+:   :+: 
echo +:+    +:+ +:+    +:+ +:+    +:+ :+:+:+  +:+ 
echo +#++:++#+  +#+    +:+ +#++:++#:  +#+ +:+ +#+ 
echo +#+        +#+    +#+ +#+    +#+ +#+  +#+#+# 
echo #+#        #+#    #+# #+#    #+# #+#   #+#+# 
echo ###         ########  ###    ### ###    #### 
echo ===========================================
echo  Porn Site List:
echo ===========================================
echo  You can add frequently downloaded sites..
echo  by editting the batch file and replacing 
echo  all instances of "PORNSITE-X" with 
echo  the site of choice. CTRL+H is your friend.
echo  Otherwise just select the first option
echo ===========================================
echo -
echo  1) Download Video
echo  2) Pornhub 
echo  3) Pornhub Premium (Check README.txt)
echo  4) Xvideo
echo  5) PORNSITE-FOUR
echo  6) PORNSITE-FIVE
echo  Q) Main Menu
echo -
echo ===========================================
set /p prn=Pick an Option:
if "%prn%"=="1" goto prn1
if "%prn%"=="2" goto prn2
if "%prn%"=="3" goto prn3
if "%prn%"=="4" goto prn4
if "%prn%"=="5" goto prn5
if "%prn%"=="6" goto prn6
if "%prn%"=="Q" goto home1
if "%prn%"=="q" goto home1
goto pla7


::  Download Video
:prn1
cls
echo  =======================
echo     Download Video
echo     Save Location:
echo  BphuDL\Downloads\Porn\
echo  =======================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
youtube-dl -f "%hls%" -o Downloads\Porn\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P pdv1=Open Download Folder [Y/N]?
if /I "%pdv1%" EQU "Y" goto :pdv1y
if /I "%pdv1%" EQU "N" goto :pdv1n
goto :choice
:pdv1y
start Downloads\Porn\
goto pla7
:pdv1n
goto pla7

::  Pornhub
:prn2
cls
echo  ===============================
echo            Pornhub
echo         Save Location:
echo  BphuDL\Downloads\Porn\Pornhub\
echo  ===============================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
youtube-dl -f "%hls%" -o Downloads\Porn\Pornhub\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P ph1=Open Download Folder [Y/N]?
if /I "%ph1%" EQU "Y" goto :ph1y
if /I "%ph1%" EQU "N" goto :ph1n
goto :choice
:ph1y
start Downloads\Porn\Pornhub\
goto pla7
:ph1n
goto pla7

::  Pornhub Premium
:prn3
cls
echo  ====================================
echo          Pornhub Premium
echo  See README.TXT for setting this up
echo           Save Location:
echo   BphuDL\Downloads\Porn\Pornhub\
echo  ====================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
youtube-dl -f "%hls%" --cookies cookies\PHcookies.txt -o Downloads\Porn\Pornhub\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P php1=Open Download Folder [Y/N]?
if /I "%php1%" EQU "Y" goto :php1y
if /I "%php1%" EQU "N" goto :php1n
goto :choice
:php1y
start Downloads\Porn\Pornhub\
goto pla7
:php1n
goto pla7

::  Xvideo
:prn4
cls
echo  ==============================
echo             Xvideo
echo         Save Location:
echo  BphuDL\Downloads\Porn\Xvideo\
echo  ==============================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
youtube-dl -f "%hls%" -o Downloads\Porn\Xvideo\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P xv1=Open Download Folder [Y/N]?
if /I "%xv1%" EQU "Y" goto :xv1y
if /I "%xv1%" EQU "N" goto :xv1n
goto :choice
:xv1y
start Downloads\Porn\Xvideo\
goto pla7
:xv1n
goto pla7

::  PORNSITE-FOUR
:prn5
cls
echo  =====================================
echo            PORNSITE-FOUR
echo            Save Location:
echo  BphuDL\Downloads\Porn\PORNSITE-FOUR\
echo  =====================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
youtube-dl -f "%hls%" -o Downloads\Porn\PORNSITE-FOUR\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P ps4=Open Download Folder [Y/N]?
if /I "%ps4%" EQU "Y" goto :ps4y
if /I "%ps4%" EQU "N" goto :ps4n
goto :choice
:ps4y
start Downloads\Porn\PORNSITE-FOUR\
goto pla7
:ps4n
goto pla7

:exit
@exit

::  PORNSITE-FIVE
:prn6
cls
echo  ====================================
echo            PORNSITE-FIVE
echo            Save Location:
echo  BphuDL\Downloads\Porn\PORNSITE-FIVE
echo  ====================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
youtube-dl -f "%hls%" -o Downloads\Porn\PORNSITE-FIVE\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P ps5=Open Download Folder [Y/N]?
if /I "%ps5%" EQU "Y" goto :ps5y
if /I "%ps5%" EQU "N" goto :ps5n
goto :choice
:ps5y
start Downloads\Porn\PORNSITE-FIVE\
goto pla7
:ps5n
goto pla7

:exit
@exit

::  skip8
:pla8
cls
echo  :::::::: ::::::::::: :::    ::: :::::::::: :::::::::  
echo :+:    :+:    :+:     :+:    :+: :+:        :+:    :+: 
echo +:+    +:+    +:+     +:+    +:+ +:+        +:+    +:+ 
echo +#+    +:+    +#+     +#++:++#++ +#++:++#   +#++:++#:  
echo +#+    +#+    +#+     +#+    +#+ +#+        +#+    +#+ 
echo #+#    #+#    #+#     #+#    #+# #+#        #+#    #+# 
echo  ########     ###     ###    ### ########## ###    ### 
echo =========================================================================
echo  Other -  Use this for any random site not related to the other options.
echo                             Save Location:
echo                         BphuDL/Downloads/Other
echo =========================================================================
echo -
echo  1) Download Video
echo  Q) Main Menu
echo -
echo =========================================================================
set /p othr=Pick an Option:
if "%othr%"=="1" goto orth1
if "%othr%"=="Q" goto home1
if "%othr%"=="q" goto home1
goto pla8

::  Download Video
:othr1
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo =======================================================
echo  Pick Format Code from the left column [example: 1080]
echo =======================================================
if not defined hls set /p "hls=Type the Format Code from the left column for the Quality that you want: "
youtube-dl -f "%hls%" -o Downloads\Other\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P oth1=Open Download Folder [Y/N]?
if /I "%oth1%" EQU "Y" goto :oth1y
if /I "%oth1%" EQU "N" goto :oth1n
goto :choice
:oth1y
start Downloads\Other\
goto pla8
:oth1n
goto pla8

:exit
@exit

:: skip9
:pla9
cls
echo  :::   ::: ::::::::::: :::::::::  :::        ::::::::::: :::      ::::::::   ::::::::  
echo  :+:   :+:     :+:     :+:    :+: :+:            :+:   :+: :+:   :+:    :+: :+:    :+: 
echo   +:+ +:+      +:+     +:+    +:+ +:+            +:+  +:+   +:+  +:+        +:+        
echo    +#++:       +#+     +#+    +:+ +#+            +#+ +#++:++#++: :#:        +#++:++#++ 
echo     +#+        +#+     +#+    +#+ +#+            +#+ +#+     +#+ +#+   +#+#        +#+ 
echo     #+#        #+#     #+#    #+# #+#            #+# #+#     #+# #+#    #+# #+#    #+# 
echo     ###        ###     #########  ##########     ### ###     ###  ########   ########  
echo ===================
echo  youtube-dl tags:
echo ===================
echo -
echo  1) youtube-dl -F
echo  2) youtube-dl -j
echo  3) Add Flags
echo  4) Empty
echo  Q) Main Menu
echo -
echo ===================
set /p ytf=Pick an Option:
if "%ytf%"=="1" goto ytf1
if "%ytf%"=="2" goto ytf2
if "%ytf%"=="3" goto ytf3
if "%ytf%"=="4" goto ytf4
if "%ytf%"=="Q" goto home1
if "%ytf%"=="q" goto home1
goto pla9


::  Youtube-dl -F
:ytf1
cls
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url%
TIMEOUT 1
:choice
set /P ytfh1=Return Home? [Y/N]?
if /I "%ytfh1%" EQU "Y" goto :ytfh1y
if /I "%ytfh1%" EQU "N" goto :ytfh1n
goto :choice
:ytfh1y
goto pla9
:ytfh1n
exit

::  Youtube-dl -j
:ytf2
:: Save JSON?
:choice1
set /P ytjs=Save to Txt? [Y/N]?
if /I "%ytjs%" EQU "Y" goto :ytjsy
if /I "%ytjs%" EQU "N" goto :ytjsn
goto :choice1
:ytjsy
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -j %url% > JSONresults.txt
goto choice2
:ytjsn
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -j %url% 
goto choice3
:: Open Saved TXT?
:choice2
set /P tyjo=Open TXT file? [Y/N]?
if /I "%tyjo%" EQU "Y" goto :tyjoy
if /I "%tyjo%" EQU "N" goto :tyjon
goto pla9
:tyjoy
start JSONresults.txt
:tyjon
goto choice3
:: Return Home?
:choice3
set /P ytfh2=Return Home? [Y/N]?
if /I "%ytfh2%" EQU "Y" goto :ytfh2y
if /I "%ytfh2%" EQU "N" goto :ytfh2n
goto :choice3
:ytfh2y
goto pla9
:ytfh2n
exit

::  Add Flags
:ytf3
cls
set "flag=%~1"
if not defined flag set /p "flag=Enter Flags Here: "
youtube-dl %flag%
TIMEOUT 1
:choice
set /P ytfh3=Return Home? [Y/N]?
if /I "%ytfh3%" EQU "Y" goto :ytfh3y
if /I "%ytfh3%" EQU "N" goto :ytfh3n
goto :choice
:ytfh3y
goto pla9
:ytfh3n
exit

::  Empty
:ytf4
cls
set "url=%~1"
if not defined url set /p "url=Enter URL: "
[ENTER COMMAND HERE]
TIMEOUT 1
:choice
set /P ytfh4=Return Home? [Y/N]?
if /I "%ytfh4%" EQU "Y" goto :ytfh4y
if /I "%ytfh4%" EQU "N" goto :ytfh4n
goto :choice
:ytfh4y
goto pla9
:ytfh4n
exit

::  skip10
:dir10
cls
echo  ::::::::: ::::::::::: :::::::::  
echo  :+:    :+:    :+:     :+:    :+: 
echo  +:+    +:+    +:+     +:+    +:+ 
echo  +#+    +:+    +#+     +#++:++#:  
echo  +#+    +#+    +#+     +#+    +#+ 
echo  #+#    #+#    #+#     #+#    #+# 
echo  ######### ########### ###    ### 
echo ===================
echo  Directories:
echo ===================
echo -
echo  1)  Twitter
echo  2)  AfreecaTV
echo  3)  Youtube
echo  4)  Youtube Music
echo  5)  Twitch
echo  6)  Instagram
echo  7)  Reddit
echo  8)  Porn
echo  9)  Other
echo  10) BphuDL
echo  Q)  Main Menu
echo -
echo ===================
set /p dir1=Pick a Directory:
if "%dir1%"=="1" goto dir11
if "%dir1%"=="2" goto dir12
if "%dir1%"=="3" goto dir13
if "%dir1%"=="4" goto dir14
if "%dir1%"=="5" goto dir15
if "%dir1%"=="6" goto dir16
if "%dir1%"=="7" goto dir17
if "%dir1%"=="8" goto dir18
if "%dir1%"=="9" goto dir19
if "%dir1%"=="10" goto dir20
if "%dir1%"=="Q" goto home1
if "%dir1%"=="q" goto home1
goto dir10

:: Twitter
:dir11
start Downloads\Twitter\
goto dir10

:: AfreecaTV
:dir12
start Downloads\AfreecaTV\
goto dir10

:: Youtube
:dir13
start Downloads\YT\
goto dir10

:: Youtube Music
:dir14
start Downloads\YTMusic\
goto dir10

:: Twitch
:dir15
start Downloads\Twitch\
goto dir10

:: Instagram
:dir16
start Downloads\Instagram
goto dir10

:: Reddit
:dir17
start Downloads\Reddit\
goto dir10

:: Porn
:dir18
start Downloads\Porn\
goto dir10

:: Other
:dir19
start Downloads\Other\
goto dir10

:: BphuDL
:dir20
start .
goto dir10

:exit
@exit







