@echo off

:: TO FIND THE START OF EACH SECTION - PRESS CTRL+F AND SEARCH FOR:
:: skip1 - Twitter
:: skip2 - Afreecatv
:: skip3 - Youtube
:: skip4 - Porn
:: skip5 - Twitch
:: skip6 - Reddit
:: skip7 - Other
:: skip8 - Youtube-dl Flags
:: skip9 - Directories

:home1
:begin
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

echo ===================
echo  Platform:
echo ===================
echo - 
echo  1) Twitter
echo  2) AfreecaTV
echo  3) Youtube
echo  4) Porn
echo  5) Twitch
echo  6) Reddit
echo  7) Other
echo  8) Youtube-dl Flags
echo  9) Directories
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
if "%pla%"=="Q" goto quit1
if "%pla%"=="q" goto quit1

::  Quit
:quit1
exit

::  skip1
:pla1
:begin
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
echo  2) TWITUSER-TWO
echo  3) TWITUSER-THREE
echo  4) TWITUSER-FOUR
echo  5) TWITUSER-FIVE
echo  6) TWITUSER-SIX
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
goto home1
:tdv1n
goto home1

::  TWITUSER-TWO
:twr2
cls
echo  ==============
echo   TWITUSER-TWO
echo  ==============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER-TWO\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu1=Open Download Folder [Y/N]?
if /I "%twu1%" EQU "Y" goto :twu1y
if /I "%twu1%" EQU "N" goto :twu1n
goto :choice
:twu1y
start Downloads\Twitter\Users\TWITUSER-TWO\
goto home1
:twu1n
goto home1

::  TWITUSER-THREE
:twr3
cls
echo  ==============
echo   TWITUSER-THREE
echo  ==============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER-THREE\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu2=Open Download Folder [Y/N]?
if /I "%twu2%" EQU "Y" goto :twu2y
if /I "%twu2%" EQU "N" goto :twu2n
goto :choice
:twu2y
start Downloads\Twitter\Users\TWITUSER-THREE\
goto home1
:twu2n
goto home1

::  TWITUSER-FOUR
:twr4
cls
echo  ================
echo   TWITUSER-FOUR
echo  ================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER-FOUR\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu3=Open Download Folder [Y/N]?
if /I "%twu3%" EQU "Y" goto :twu3y
if /I "%twu3%" EQU "N" goto :twu3n
goto :choice
:twu3y
start Downloads\Twitter\Users\TWITUSER-FOUR\
goto home1
:twu3n
goto home1

::  TWITUSER-FIVE
:twr5
cls
echo  ===============
echo   TWITUSER-FIVE
echo  ===============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER-FIVE\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu4=Open Download Folder [Y/N]?
if /I "%twu4%" EQU "Y" goto :twu4y
if /I "%twu4%" EQU "N" goto :twu4n
goto :choice
:twu4y
start Downloads\Twitter\Users\TWITUSER-FIVE\
goto home1
:twu4n
goto home1

::  TWITUSER-SIX
:twr6
cls
echo  ===============
echo   TWITUSER-SIX
echo  ===============
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -F %url% &
set "hls=%~1"
echo ===========================================================
echo  Pick Format Code from the left column [example: hls-2783]
echo ===========================================================
if not defined hls set /p "hls=Enter HLS Code [only the number, dont need the "hls-": "
youtube-dl -f "hls-%hls%" -o Downloads\Twitter\Users\TWITUSER-SIX\%%(uploader)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P twu5=Open Download Folder [Y/N]?
if /I "%twu5%" EQU "Y" goto :twu5y
if /I "%twu5%" EQU "N" goto :twu5n
goto :choice
:twu5y
start Downloads\Twitter\Users\TWITUSER-SIX\
goto home1
:twu5n
goto home1

:exit
@exit

::  skip2
:pla2
:begin
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
echo  2) ATVUSER-TWO
echo  3) ATVUSER-THREE
echo  4) ATVUSER-FOUR
echo  5) ATVUSER-FIVE
echo  6) ATVUSER-SIX
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
goto home1
:adv1n
goto home1

::  ATVUSER-TWO
:op2
cls
echo  =============
echo   ATVUSER-TWO
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
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER-TWO\[%spc%]-ATVUSER-TWO-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv2=Open Download Folder [Y/N]?
if /I "%atv2%" EQU "Y" goto :atv2y
if /I "%atv2%" EQU "N" goto :atv2n
goto :choice
:atv2y
start Downloads\AfreecaTV\Users\ATVUSER-TWO\
goto home1
:atv2n
goto home1

::  ATVUSER-THREE
:op3
cls
echo  ===============
echo   ATVUSER-THREE 
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
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER-THREE\[%spc%]-ATVUSER-THREE-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv3=Open Download Folder [Y/N]?
if /I "%atv3%" EQU "Y" goto :atv3y
if /I "%atv3%" EQU "N" goto :atv3n
goto :choice
:atv3y
start Downloads\AfreecaTV\Users\ATVUSER-THREE\
goto home1
:atv3n
goto home1

::  ATVUSER-FOUR
:op4
cls
echo  ==============
echo   ATVUSER-FOUR
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
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER-FOUR\[%spc%]-ATVUSER-FOUR-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv4=Open Download Folder [Y/N]?
if /I "%atv4%" EQU "Y" goto :atv4y
if /I "%atv4%" EQU "N" goto :atv4n
goto :choice
:atv4y
start Downloads\AfreecaTV\Users\ATVUSER-FOUR\
goto home1
:atv4n
goto home1

::  ATVUSER-
:op5
cls
echo  ==============
echo   ATVUSER-FIVE
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
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER-FIVE\[%spc%]ATVUSER-FIVE-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv5=Open Download Folder [Y/N]?
if /I "%atv5%" EQU "Y" goto :atv5y
if /I "%atv5%" EQU "N" goto :atv5n
goto :choice
:atv5y
start Downloads\AfreecaTV\Users\ATVUSER-FIVE\
goto home1
:atv5n
goto home1

::  ATVUSER-SIX
:op6
cls
echo  =============
echo   ATVUSER-SIX
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
youtube-dl -f "hls-%hls%" --audio-quality 0 -o Downloads\AfreecaTV\Users\ATVUSER-SIX\[%spc%]ATVUSER-SIX-%%(id)s-%%(resolution)s.%%(ext)s -u %user% -p %pwd% --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P atv6=Open Download Folder [Y/N]?
if /I "%atv6%" EQU "Y" goto :atv6y
if /I "%atv6%" EQU "N" goto :atv6n
goto :choice
:atv6y
start Downloads\AfreecaTV\Users\ATVUSER-SIX\
goto home1
:atv6n
goto home1

:exit
@exit

::  skip3
:pla3
:begin
cls
echo :::   :::  ::::::::  :::    ::: ::::::::::: :::    ::: :::::::::  :::::::::: 
echo :+:   :+: :+:    :+: :+:    :+:     :+:     :+:    :+: :+:    :+: :+:        
echo  +:+ +:+  +:+    +:+ +:+    +:+     +:+     +:+    +:+ +:+    +:+ +:+        
echo   +#++:   +#+    +:+ +#+    +:+     +#+     +#+    +:+ +#++:++#+  +#++:++#   
echo    +#+    +#+    +#+ +#+    +#+     +#+     +#+    +#+ +#+    +#+ +#+        
echo    #+#    #+#    #+# #+#    #+#     #+#     #+#    #+# #+#    #+# #+#        
echo    ###     ########   ########      ###      ########  #########  ########## 
echo ====================================================================================================================
echo  Youtube Video Type:
echo ====================================================================================================================
echo -
echo   1) Video - 720p
echo   2) Video - 1080p
echo   3) Video - Highest Resolution
echo   4) Video Playlist - 720p
echo   5) Video Playlist - 1080p
echo   6) Video Playlist - Highest Resolution
echo   7) Music Video - 720p
echo   8) Music Video - 1080p
echo   9) Music Video - Highest Resolution
echo  10) Music Video Playlist - 720p
echo  11) Music Video Playlist - 1080p
echo  12) Music Video Playlist - Highest Resolution
echo  13) Music - Audio Only
echo  14) Music Playlist - Audio Only
echo  15) Music - Audio Only from TXT File
echo   Q) Main Menu
echo -
echo ====================================================================================================================
set /p yt=Pick a Type:
if "%yt%"=="1" goto yt1
if "%yt%"=="2" goto yt2
if "%yt%"=="3" goto yt3
if "%yt%"=="4" goto yt4
if "%yt%"=="5" goto yt5
if "%yt%"=="6" goto yt6
if "%yt%"=="7" goto yt7
if "%yt%"=="8" goto yt8
if "%yt%"=="9" goto yt9
if "%yt%"=="10" goto yt10
if "%yt%"=="11" goto yt11
if "%yt%"=="12" goto yt12
if "%yt%"=="13" goto yt13
if "%yt%"=="14" goto yt14
if "%yt%"=="15" goto yt15
if "%yt%"=="Q" goto home1
if "%yt%"=="q" goto home1

::  Video - 720p
:yt1
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
set /P v720=Open Download Folder [Y/N]?
if /I "%v720%" EQU "Y" goto :v720y
if /I "%v720%" EQU "N" goto :v720n
goto :choice
:v720y
start Downloads\YT\720p\
goto pla3
:v720n
goto pla3

::  Video - 1080p
:yt2
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
set /P v1080=Open Download Folder [Y/N]?
if /I "%v1080%" EQU "Y" goto :v1080y
if /I "%v1080%" EQU "N" goto :v1080n
goto :choice
:v1080y
start Downloads\YT\1080p\
goto pla3
:v1080n
goto pla3

::  Video - Highest Resolution
:yt3
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
set /P vhr=Open Download Folder [Y/N]?
if /I "%vhr%" EQU "Y" goto :vhry
if /I "%vhr%" EQU "N" goto :vhrn
goto :choice
:vhry
start Downloads\YT\HR\
goto pla3
:vhrn
goto pla3

::  Video Playlist - 720p
:yt4
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
set /P vp720=Open Download Folder [Y/N]?
if /I "%vp720%" EQU "Y" goto :vp720y
if /I "%vp720%" EQU "N" goto :vp720n
goto :choice
:vp720y
start Downloads\YT\720p\
goto pla3
:vp720n
goto pla3

::  Video Playlist - 1080p
:yt5
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
set /P vp1080=Open Download Folder [Y/N]?
if /I "%vp1080%" EQU "Y" goto :vp1080y
if /I "%vp1080%" EQU "N" goto :vp1080n
goto :choice
:vp1080y
start Downloads\YT\1080p\
goto pla3
:vp1080n
goto pla3

::  Video Playlist - Highest Resolution
:yt6
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
set /P vphr=Open Download Folder [Y/N]?
if /I "%vphr%" EQU "Y" goto :vphry
if /I "%vphr%" EQU "N" goto :vphrn
goto :choice
:vphry
start Downloads\YT\HR\
goto pla3
:vphrn
goto pla3

::  Msuic Video - 720p
:yt7
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
set /P m720=Open Download Folder [Y/N]?
if /I "%m720%" EQU "Y" goto :m720y
if /I "%m720%" EQU "N" goto :m720n
goto :choice
:m720y
start Downloads\YTMusic\720p\
goto pla3
:m720n
goto pla3

::  Music Video - 1080p
:yt8
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
set /P m1080=Open Download Folder [Y/N]?
if /I "%m1080%" EQU "Y" goto :m1080y
if /I "%m1080%" EQU "N" goto :m1080n
goto :choice
:m1080y
start Downloads\YTMusic\1080p\
goto pla3
:m1080n
goto pla3

::  Music Video - Highest Resolution
:yt9
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
if /I "%mhr%" EQU "Y" goto :mhry
if /I "%mhr%" EQU "N" goto :mhrn
goto :choice
:mhry
start Downloads\YTMusic\HR\
goto pla3
:mhrn
goto pla3

::  Music Video Playlist - 720p
:yt10
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
set /P mp720=Open Download Folder [Y/N]?
if /I "%mp720%" EQU "Y" goto :mp720y
if /I "%mp720%" EQU "N" goto :mp720n
goto :choice
:mp720y
start Downloads\YTMusic\720p\
goto pla3
:mp720n
goto pla3

::  Music Video Playlist - 1080p
:yt11
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
set /P mp1080=Open Download Folder [Y/N]?
if /I "%mp1080%" EQU "Y" goto :mp1080y
if /I "%mp1080%" EQU "N" goto :mp1080n
goto :choice
:mp1080y
start Downloads\YTMusic\1080p\
goto pla3
:mp1080n
goto pla3

::  Music Video Playlist - Highest Resolution
:yt12
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
set /P mphr=Open Download Folder [Y/N]?
if /I "%mphr%" EQU "Y" goto :mphry
if /I "%mphr%" EQU "N" goto :mphrn
goto :choice
:mphry
start Downloads\YTMusic\HR\
goto pla3
:mphrn
goto pla3

::  Music - Audio Only 
:yt13
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
set /P mao=Open Download Folder [Y/N]?
if /I "%mao%" EQU "Y" goto :maoy
if /I "%mao%" EQU "N" goto :maon
goto :choice
:maoy
start Downloads\YTMusic\AudioOnly\
goto pla3
:maon
goto pla3

::  Music Playlist - Audio Only 
:yt14
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
set /P mpao=Open Download Folder [Y/N]?
if /I "%mpao%" EQU "Y" goto :mpaoy
if /I "%mpao%" EQU "N" goto :mpaon
goto :choice
:mpaoy
start Downloads\YTMusic\AudioOnly\
:mpaon
goto pla3

::  Music - Audio Only from TXT File
:yt15
cls
echo  =====================================
echo    Music - Audio Only from TXT File
echo            Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\
echo  =====================================
youtube-dl --no-playlist -o Downloads\YTMusic\AudioOnly\%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata -a AudioOnlyDownloadList.txt 
TIMEOUT 1
:choice
set /P maot=Open Download Folder [Y/N]?
if /I "%maot%" EQU "Y" goto :maoty
if /I "%maot%" EQU "N" goto :maotn
goto :choice
:maoty
start Downloads\YTMusic\AudioOnly\
goto pla3
:maotn
goto pla3

:exit
@exit

::  skip4
:pla4
:begin
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
goto home1
:pdv1n
goto home1

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
goto home1
:ph1n
goto home1

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
youtube-dl -f "%hls%" --cookies cookies.txt -o Downloads\Porn\Pornhub\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P php1=Open Download Folder [Y/N]?
if /I "%php1%" EQU "Y" goto :php1y
if /I "%php1%" EQU "N" goto :php1n
goto :choice
:php1y
start Downloads\Porn\Pornhub\
goto home1
:php1n
goto home1

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
goto home1
:xv1n
goto home1

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
goto home1
:ps4n
goto home1

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
goto home1
:ps5n
goto home1

:exit
@exit

::  skip5
:pla5
:begin
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
goto home1
:tc1n
goto home1

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
goto home1
:red1n
goto home1

::  skip7
:pla7

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
goto home1
:oth1n
goto home1

:: skip8
:pla8
:begin
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
echo  3) Empty
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
goto pla8
:ytfh1n
exit

::  Youtube-dl -j
:ytf2
cls
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl -j %url%
TIMEOUT 1
:choice
set /P ytfh2=Return Home? [Y/N]?
if /I "%ytfh2%" EQU "Y" goto :ytfh2y
if /I "%ytfh2%" EQU "N" goto :ytfh2n
goto :choice
:ytfh2y
goto pla8
:ytfh2n
exit

::  Empty
:ytf3
cls
set "url=%~1"
if not defined url set /p "url=Enter URL: "
[ENTER COMMAND HERE]
TIMEOUT 1
:choice
set /P ytfh3=Return Home? [Y/N]?
if /I "%ytfh3%" EQU "Y" goto :ytfh3y
if /I "%ytfh3%" EQU "N" goto :ytfh3n
goto :choice
:ytfh3y
goto pla8
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
goto pla8
:ytfh4n
exit

::  skip9
:pla9
:begin
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
echo  1) Twitter
echo  2) AfreecaTV
echo  3) Youtube
echo  4) Youtube Music
echo  5) Porn
echo  6) Twitch
echo  7) Reddit
echo  8) Other
echo  9) BphuDL
echo  Q) Main Menu
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
if "%dir1%"=="Q" goto home1
if "%dir1%"=="q" goto home1

:: Twitter
:dir11
start Downloads\Twitter\
goto pla9

:: AfreecaTV
:dir12
start Downloads\AfreecaTV\
goto pla9

:: Youtube
:dir13
start Downloads\YT\
goto pla9

:: Youtube Music
:dir14
start Downloads\YTMusic\
goto pla9

:: Porn
:dir15
start Downloads\Porn\
goto pla9

:: Twitch
:dir16
start Downloads\Twitch\
goto pla9

:: Reddit
:dir17
start Downloads\Reddit\
goto pla9

:: Other
:dir18
start Downloads\Other\
goto pla9

::  BphuDL
:dir19
start .
goto pla9

:exit
@exit

:exit
@exit






