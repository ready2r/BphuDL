Most of it is pretty straight forward..

If you have any questions, you can msg me on Discord: Bphu#0001.  Warning: I am not an expert on batchfile or youtube-dl.  This was more of a learning process than anything else.

=================
Disclaimer
=================
https://github.com/ytdl-org/youtube-dl/
Do not move any of the .exe files or the batch file from the location they are in.
This batch file uses youtube-dl and ffmpeg to do the downloading. A ton of people work hard on youtube-dl, so most sites should work.  I will warn you, there are new hosting sites coming out that this will not work on.  The way the new sites are sending the data to the end user makes it more difficult for youtube-dl to work. An example site would be Sproutvideo.  There are other programs you can use to download from these new sites.

If a video download is not working, your best bet is to check: https://ytdl-org.github.io/youtube-dl/supportedsites.html and see if the site is supported.  One note, when sites change their code in relation to the video, it will sometimes break youtube-dl.  An example site as of typing this is Xhamster.  Its on the list as supported, but its currently not working because of a change on Xhamster's end.  You can always check the Issues tabs and see if someone made a report for it.  In which case they did, and the fix has already been found but has not been implemented: https://github.com/ytdl-org/youtube-dl/issues/26157

==========================
Updating Youtube-DL
==========================
Keeping youtube-dl.exe up to date is important.  To update you can open CMD in BphuDL's location (open the folder and towards the top where it lists the path name, click it and type CMD and hit enter) and type:

youtube-dl -U

Alternatively, you can just run the Update_YTDL.bat and it will do the same thing.

==========================
Youtube Age Restriction
==========================
https://www.reddit.com/r/youtubedl/comments/hvl8rq/age_restriction/
Youtube requires verification when downloading age restricted videos.  As of now, youtube-dl bypasses this by using your browser cookies to access and download the videos.  They are currently working on a way to bypass age restriction without the use of cookies, but it has not been pushed to a youtube-dl releases yet.  

I know some people may be wary about using cookies so i gave you an option to not use cookies when downloading videos, but you wont be able to download age restricted videos. 

If you dont mind having cookies in a text document, then continue reading: 

You can obtain the cookies however you want, but the easiest way to do it is using the addon "Cookies.txt".  Its available for both Chrome and Firefox.  Once installed, go to Youtube and make sure you are logged into an account that is able to access age restricted videos.  Once logged in, use the "export cookies" button in your addon's toolbar and select "Current Site".  Save the cookies.txt as YTcookies.txt and put it in the cookies folder in the base directory [BphuDL/cookies/YTcookies.txt].  

==========================
Youtube 720p/1080p and HR
==========================
My Youtube-dl strings for Youtube videos uses the height as the determining factor when selecting which format to download.

When dealing with a video that has an irregular video height x width; you may get, what you think, is the wrong resolution.  An example would be a video like: https://www.youtube.com/watch?v=0HO_tNU8iGs
It will give you this output:
136          mp4        1280x640   720p  834k , avc1.4d401f, 24fps, video only, 8.73MiB
398          mp4        1280x640   720p  994k , av01.0.05M.08, 24fps, video only, 11.94MiB
247          webm       1280x640   720p 1003k , vp9, 24fps, video only, 9.50MiB
399          mp4        1920x960   1080p 1799k , av01.0.08M.08, 24fps, video only, 19.83MiB
248          webm       1920x960   1080p 2331k , vp9, 24fps, video only, 25.47MiB
137          mp4        1920x960   1080p 2921k , avc1.640028, 24fps, video only, 30.41MiB

It has a normal 720p width (1280) but the height has been lowered.  So when using the 720p option to download, you will get 1280x640.  Same goes for if you select the 1080p download option, it will give you 1920x960.

There are extreme examples where the 1080p and the 720p will give you the same video.  Take https://www.youtube.com/watch?v=dktW5r4ldyo as an example.
It will give you this output:
247          webm       1280x448   720p 1149k , vp9, 24fps, video only, 18.85MiB
136          mp4        1280x448   720p 1562k , avc1.64001f, 24fps, video only, 30.05MiB
248          webm       1920x672   1080p 2172k , vp9, 24fps, video only, 33.53MiB
137          mp4        1920x672   1080p 3154k , avc1.640020, 24fps, video only, 62.13MiB

Both have normal 720p and 1080p widths, but the height is almost cut in half.  So if you use 720p or the 1080p, you will get the same file, 1920x672.

I could use the width as the determining factor, but you will have the same issue if you come across videos with normal heights but irregular widths. (think of cellphone video)

The High Resolution option will save the files in MKV format instead of MP4.  High Resoultion is to be used for the highest resolution and the best quality possible and youtube sends that in webm format (highest Total Bitrate).  Ive had an issue trying to download both the audio webm and the video webm and then merge and covert them to mp4 using ffmpeg.  If you dont want MKV, then download an MKV to MP4 converter, or just use VLC player to convert.


=================
Pornhub Premium
=================
Pornhub Premium requires authentication to download videos using youtube-dl.
If you have Pornhub Premium, you can download videos by enabling cookies through youtube-dl, similar to Youtube Age Restriction.  If you do not wish to use cookies, use the regular Pornhub option.  You must logout of Pornhub Premium to download non-Pornhub Premium videos.  Your URL must be Pornhub.com and not Pornhubpremium.com.

If you dont mind having cookies in a text document, then continue reading: 

You can obtain the cookies however you want, but the easiest way to do it is using the addon "Cookies.txt".  Its available for both Chrome and Firefox.  Once installed, go to Pornhubpremium.com and make sure you are logged into an account has Pornhub Premium.  Once logged in, use the "export cookies" button in your addon's toolbar and select "Current Site".  Save the cookies.txt as PHcookies.txt and put it in the cookies folder in the base directory [BphuDL/cookies/PHcookies.txt].

=================
Other Porn Sites
=================
I tested a few other pornsites and most of them work.  M-less you have to right click the video and get the link that way.  Most of the others you can just paste the browser URL. Xhamster is currently not working.  See Disclaimer for explaination.

=================
AfreecaTV Login
=================
AfreecaTV requires your login info to access most of the clips/videos.  This is a basic command line code and does not send your information anywhere besides to Afreecatv, nor does it store it on your PC.  If you are worried about it.. have someone who knows basic code go over the batch file.

=================
Twitch Streams
=================
If you are saving a stream as it is live, pay attention to disk space.  Live streams will take up a large filesizes if you just let it run without paying attention.  A 16 hour Jinny stream can easily take over 10GB and its only 720p.  Just a heads up.

=================
Other
=================
You can use this for whatever.  If you want to keep videos seperate from the other categories, you can use this option.  It will save the videos in the "BphuDL\Downloads\Other\" folder.

==========================
AudioOnlyDownloadList.txt
==========================
Youtube Music AudioOnlyDownloadList.txt is used to download a bunch of random audio only songs together.  Put each youtube url on its own line and then save the file.  Run the batch and select Youtube[3]>Music - Audio Only from TXT file[6] and it will download all the songs in the txt file

==========================
Menu Customization
==========================
The menus are easily customizable.  Its benefical to add commonly downloaded streamers or porn sites to the list.  This will put their videos in their own folder together. The easiest way to edit the extra menus is by using "Find and Replace" in notepad. CTRL+H will bring it up. An example would be changing TWITUSER2 to someone else.  Put TWITUSER2 into the "Find what" field and the user who you want to add in the "Replace with" field.  Check "Match case" and click Replace All.  This will make it so using that user option when running the batch file will put the new downloaded videos in the user's own folder.  Like with most things, DO NOT USE SPACES, use underscores instead.

Thats about it.  Like I said, if you have any more questions.. just msg me on Discord: Bphu#0001






