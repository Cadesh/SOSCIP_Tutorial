# author: Andre 
# original from: https://towardsdatascience.com/build-a-youtube-downloader-with-python-8ef2e6915d97
# Download videos

# NOTE: The original youtube_dl module used in the Categorizer2019 is no longer working after the latest Youtube changes
# NOTE: It is necessary to try different sources (other than Youtube to check if this code works with other sources as CTV)

from pytube import YouTube

#ask for the link from user
link = "https://www.youtube.com/watch?v=AfsnHVaScjg&ab_channel=TalonsandTeeth"
yt = YouTube(link)

#Showing details
print("Title: ",yt.title)
print ('')
print("Length of video: ",yt.length)
print ('')
#print("Description: ",yt.description)
print ('')

#Getting the highest resolution possible
yt.streams.filter(only_audio=True)
yt.streams.filter(only_video=True)
#yt.streams.filter(progressive=True)
ys = yt.streams.get_lowest_resolution()

ys.download()
print("Download completed!!")