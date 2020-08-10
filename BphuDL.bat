@echo off

:: TO FIND THE START OF EACH SECTION - PRESS CTRL+F AND SEARCH FOR:
:: 1TWITTER - Twitter
:: 2AFREECATV - Afreecatv
:: 3YOUTUBE - Youtube
:: 4PORN - Porn
:: 5TWITCH - Twitch
:: 6REDDIT - Reddit
:: 7OTHER - Other

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
echo ======================== Version 1.0 =============================
echo This batch file uses youtube-dl and ffmpeg to download videos from 
echo the platforms below. Please read the README.txt if you have any 
echo questions!
echo ==================================================================

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
if "%pla%"=="Q" goto quit1
if "%pla%"=="q" goto quit1

::  Quit
:quit1
exit

::  1TWITTER
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

::  2AFREECATV
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

::  3YOUTUBE
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
echo  1) Video - Best Quality                            -Downloads\YT\Best\
echo  2) Video - Best Combined Quality                   -Downloads\YT\
echo  3) Music - Video Best Quality                      -Downloads\YTMusic\Best\
echo  4) Music - Video Best Combined Quality             -Downloads\YTMusic\
echo  5) Music - Audio Only                              -Downloads\YTMusic\AudioOnly\
echo  6) Music - Audio Only from TXT File                -Downloads\YTMusic\AudioOnly\
echo  7) Playlist - Video Best Quality                   -Downloads\YT\Playlist\Best\*You_Pick_Folder_Name*\
echo  8) Playlist - Video Best Combined Quality          -Downloads\YT\Playlist\*You_Pick_Folder_Name*\
echo  9) Playlist - Music Video Best Quality             -Downloads\YTMusic\Playlist\Best\*You_Pick_Folder_Name*\
echo  10) Playlist - Music Video Best Combined Quality   -Downloads\YTMusic\Playlist\*You_Pick_Folder_Name*\
echo  11) Playlist - Audio Only                          -Downloads\YTMusic\AudioOnly\Playlist\*You_Pick_Folder_Name*\
echo  Q) Main Menu
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
if "%yt%"=="Q" goto home1
if "%yt%"=="q" goto home1

::  Video - Best Quality
:yt1
cls
echo  ===========================
echo     Video - Best Quality
echo       Save Location:
echo   BphuDL\Downloads\YT\Best\
echo  ===========================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -o Downloads\YT\Best\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url% &
TIMEOUT 1
:choice
set /P vbq=Open Download Folder [Y/N]?
if /I "%vbq%" EQU "Y" goto :vbqy
if /I "%vbq%" EQU "N" goto :vbqn
goto :choice
:vbqy
start Downloads\YT\Best\
goto home1
:vbqn
goto home1

::  Video - Best Combined Quality
:yt2
cls
echo  ===============================
echo   Video - Best Combined Quality
echo         Save Location:
echo      BphuDL\Downloads\YT\
echo  ===============================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -o Downloads\YT\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P vbcq=Open Download Folder [Y/N]?
if /I "%vbcq%" EQU "Y" goto :vbcqy
if /I "%vbcq%" EQU "N" goto :vbcqn
goto :choice
:vbcqy
start Downloads\YT\
goto home1
:vbcqn
goto home1

::  Music - Video Best Quality
:yt3
cls
echo  ============================================
echo          Music - Video Best Quality
echo               Save Location:
echo   BphuDL\Downloads\YTMusic\MusicVideos\Best\
echo  ============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl --no-playlist -o Downloads\YTMusic\MusicVideos\Best\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P mvbq=Open Download Folder [Y/N]?
if /I "%mvbq%" EQU "Y" goto :mvbqy
if /I "%mvbq%" EQU "N" goto :mvbqn
goto :choice
:mvbqy
start Downloads\YTMusic\MusicVideos\Best\
goto home1
:mvbqn
goto home1

::  Music - Video Best Combined Quality
:yt4
cls
echo  ============================================
echo      Music - Video Best Combined Quality
echo              Save Location:
echo   BphuDL\Downloads\YTMusic\MusicVideos\
echo  ============================================
set "url=%~1"
if not defined url set /p "url=Enter URL: "
youtube-dl  -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --no-playlist -o Downloads\YTMusic\MusicVideos\%%(title)s-%%(resolution)s.%%(ext)s --add-metadata %url%
TIMEOUT 1
:choice
set /P mvbcq=Open Download Folder [Y/N]?
if /I "%mvbcq%" EQU "Y" goto :mvbcqy
if /I "%mvbcq%" EQU "N" goto :mvbcqn
goto :choice
:mvbcqy
start Downloads\YTMusic\MusicVideos\
goto home1
:mvbcqn
goto home1

::  Music - Audio Only 
:yt5
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
goto home1
:maon
goto home1

::  Music - Audio Only from TXT File
:yt6
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
goto home1
:maotn
goto home1

::  Playlist - Video Best Quality
:yt7
cls
echo  =========================================================
echo              Playlist - Video Best Quality
echo                     Save Location:
echo   BphuDL\Downloads\YT\Playlist\Best\*chosen_folder_name*\
echo  =========================================================
set "url=%~1"
set "fldr=%~1"
if not defined url set /p "url=Enter URL: "
if not defined fldr set /p "fldr=Enter Playlist Name [Use Spaces, No Underscores: "
mkdir Downloads\YT\Playlist\Best\%fldr%\
youtube-dl --yes-playlist -o Downloads\YT\Playlist\Best\%fldr%\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P pvbq=Open Download Folder [Y/N]?
if /I "%pvbq%" EQU "Y" goto :pvbqy
if /I "%pvbq%" EQU "N" goto :pvbqn
goto :choice
:pvbqy
start Downloads\YT\Playlist\Best\%fldr%\
goto home1
:pvbqn
goto home1

::  Playlist - Video Best Combined Quality
:yt8
cls
echo  ========================================================
echo         Playlist - Video Best Combined Quality
echo                   Save Location:
echo   BphuDL\Downloads\YT\Playlist\*chosen_folder_location*\
echo  ========================================================
set "url=%~1"
set "fldr=%~1"
if not defined url set /p "url=Enter URL: "
if not defined fldr set /p "fldr=Enter Playlist Name [Use Spaces, No Underscores: "
mkdir Downloads\YT\Playlist\%fldr%
youtube-dl  -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --yes-playlist -o Downloads\YT\Playlist\%fldr%\%%(title)s-%%(resolution)s.%%(ext)s --add-metadata %url%
TIMEOUT 1
:choice
set /P pvbcq=Open Download Folder [Y/N]?
if /I "%pvbcq%" EQU "Y" goto :pvbcqy
if /I "%pvbcq%" EQU "N" goto :pvbcqn
goto :choice
:pvbcqy
start Downloads\YT\Playlist\%fldr%\
goto home1
:pvbcqn
goto home1

::  Playlist - Music Video Best Quality
:yt9
cls
echo  ==============================================================================
echo                   Playlist - Music Video Best Quality
echo                              Save Location:
echo   BphuDL\Downloads\YTMusic\MusicVideos\Playlist\Best\*chosen_folder_location*\
echo  ==============================================================================
set "url=%~1"
set "fldr=%~1"
if not defined url set /p "url=Enter URL: "
if not defined fldr set /p "fldr=Enter Playlist Name [Use Spaces, No Underscores: "
mkdir Downloads\YTMusic\MusicVideos\Playlist\Best\%fldr%
youtube-dl --yes-playlist -o Downloads\YTMusic\MusicVideos\Playlist\Best\%fldr%\%%(title)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
TIMEOUT 1
:choice
set /P pmvbq=Open Download Folder [Y/N]?
if /I "%pmvbq%" EQU "Y" goto :pmvbqy
if /I "%pmvbq%" EQU "N" goto :pmvbqn
goto :choice
:pmvbqy
start Downloads\YTMusic\MusicVideos\Playlist\Best\%fldr%\
goto home1
:pmvbqn
goto home1

::  Playlist - Music Video Best Combined Quality
:yt10
cls
echo  =========================================================================
echo              Playlist - Music Video Best Combined Quality
echo                            Save Location:
echo   BphuDL\Downloads\YTMusic\MusicVideos\Playlist\*chosen_folder_location*\
echo  =========================================================================
set "url=%~1"
set "fldr=%~1"
if not defined url set /p "url=Enter URL: "
if not defined fldr set /p "fldr=Enter Playlist Name [Use Spaces, No Underscores: "
mkdir Downloads\YTMusic\MusicVideos\Playlist\%fldr%
youtube-dl  -f bestvideo[ext=mp4]+bestaudio[ext=m4a] --yes-playlist -o Downloads\YTMusic\MusicVideos\Playlist\%fldr%\%%(title)s-%%(resolution)s.%%(ext)s --add-metadata %url%
TIMEOUT 1
:choice
set /P pmvbcq=Open Download Folder [Y/N]?
if /I "%pmvbcq%" EQU "Y" goto :pmvbcqy
if /I "%pmvbcq%" EQU "N" goto :pmvbcqn
goto :choice
:pmvbcqy
start Downloads\YTMusic\MusicVideos\Playlist\%fldr%\
goto home1
:pmvbcqn
goto home1

::  Playlist - Audio Only
:yt11
cls
echo  =======================================================================
echo                        Playlist - Audio Only
echo                           Save Location:
echo   BphuDL\Downloads\YTMusic\AudioOnly\Playlist\*chosen_folder_location*\
echo  =======================================================================
set "url=%~1"
set "fldr=%~1"
if not defined url set /p "url=Enter URL: "
if not defined fldr set /p "fldr=Enter Playlist Name [Use Spaces, No Underscores: "
mkdir Downloads\YTMusic\AudioOnly\Playlist\%fldr%
youtube-dl --yes-playlist -o Downloads\YTMusic\AudioOnly\Playlist\%fldr%\%%(title)s.%%(ext)s -x --audio-format mp3 --audio-quality 0 --add-metadata %url%
TIMEOUT 1
:choice
set /P pao=Open Download Folder [Y/N]?
if /I "%pao%" EQU "Y" goto :paoy
if /I "%pao%" EQU "N" goto :paon
goto :choice
:paoy
start Downloads\YTMusic\AudioOnly\Playlist\%fldr%\
goto home1
:paon
goto home1

:exit
@exit

::  4PORN
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

::  5TWITCH
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
if not defined fc set /p "fc=Type the Format Code from the left column for the Quality that you want: "
if not defined spc set /p "spc=Special Tag? [Funny/Tits/Ass/whatever]: "
youtube-dl -f "%fc%" -o Downloads\Twitch\Clips\[%%(creator)s-%spc%]-%%(title)s-%%(id)s-%%(resolution)s.%%(ext)s --merge-output-format mp4 --add-metadata %url%
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

::  6REDDIT
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

::  7OTHER
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

:exit
@exit






