Most of it is pretty straight forward..

If you have any questions, you can msg me on Discord: Bphu#0001

=================
PREFIX
=================
https://github.com/ytdl-org/youtube-dl/
Do not move any of the .exe files or the batch file from the location they are in.
This batch file uses youtube-dl and ffmpeg to do the downloading.  If you are trying to download a video from an obscure source and it doesn't work, its not the batch file's fault, It's a youtube-dl issue.  A ton of people work hard on youtube-dl, so most sites should work.  I will warn you, there are new hosting sites coming out that this will not work on.  The way the new sites are sending the data to the end user makes it hard for youtube-dl to download it.(im not an expert but i think i read that it has to do with the data expiring extremely fast). An example site would be Sproutvideo.  There are other programs you can use to download from these new sites.

If a video download is not working, your best bet is to check: https://github.com/ytdl-org/youtube-dl/issues and see if there is an issue that has been reported.  Example at the time of writing this: Xhamster isnt working by just pasting the URL into the batch file.  You will need to Inspect elements > click Network Tab and make sure Media is selected on the right side.  Right click the video you want and Copy the url. At this point, the batch file is useless because you can just paste the link into your browser and save it that way.

=================
Pornhub Premium
=================
Pornhub Premium requires authentication to download videos using youtube-dl.
If you have Pornhub Premium, you can download the videos by setting up a cookies.txt file in the home folder [same folder as the batch file] In order to get the cookie data from your Pornhub Premium site, you have a few options.. but the easiest would be to use a browser addon called Cookies.txt (they have it for Chrome and Firefox).  Once the addon is installed.. Log into Pornhub Premium and then use the addon button to download the cookies.txt file and save it to the home folder mentioned earlier. [same folder as the batch file]

=================
Other Porn Sites
=================
I tested a few other pornsites and most of them work.  M-less you have to right click the video and get the link that way.. 
Most of the others you can just paste the browser URL. Xhamster is currently not working.  See Prefix for explaination.

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
Youtube Music AudioOnlyDownloadList.txt is used to download a bunch of random audio only songs together.  Put each youtube url 
on its own line and then save the file.  Run the batch and select Youtube[3]>Music - Audio Only from TXT file[6] and it will 
download all the songs in the txt file

==========================
Menu Customization
==========================
The menus are easily customizable.  Its benefical to add commonly downloaded streamers or porn sites to the list.  This will put their videos in their own folder together. The easiest way to edit the extra menus is by using "Find and Replace" in notepad. CTRL+H will bring it up. An example would be changing TWITUSER-TWO to someone else.  Put TWITUSER-TWO into the "Find what" field and the user who you want to add in the "Replace with" field.  Check "Match case" and click Replace All.  This will make it so using that user option when running the batch file will put the new downloaded videos in the user's own folder.  Like with most things, DO NOT USE SPACES, use underscores instead.

Thats about it.  Like I said, if you have any more questions.. just msg me on Discord: Bphu#0001






