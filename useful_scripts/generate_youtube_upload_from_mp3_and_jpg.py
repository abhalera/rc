#!/usr/bin/env python3
from pydub import AudioSegment
import subprocess


fileName = "Bhagavad-gita01-shloka01"

fullShloka = AudioSegment.from_file("./" + fileName + ".mp3", format="mp3")

firstBegin = 28.5
firstEnd = 32.5

secondBegin = 33
secondEnd = 36

thirdBegin = 37
thirdEnd = 41

fourthBegin = 41.5
fourthEnd = 44.5

firstSeg  = fullShloka[firstBegin*1000:firstEnd*1000]

secondSeg = fullShloka[secondBegin*1000:secondEnd*1000]

thirdSeg  = fullShloka[thirdBegin*1000:thirdEnd*1000]

fourthSeg = fullShloka[fourthBegin*1000:fourthEnd*1000]

firstLine  = fullShloka[firstBegin*1000:secondEnd*1000]
secondLine = fullShloka[thirdBegin*1000:fourthEnd*1000]


firstThreeTimes  = firstSeg + firstSeg + firstSeg
secondThreeTimes = secondSeg + secondSeg + secondSeg
thirdThreeTimes  = thirdSeg + thirdSeg + thirdSeg
fourthThreeTimes = fourthSeg + fourthSeg + fourthSeg

firstLineThreeTimes  =  firstLine + firstLine + firstLine
secondLineThreeTimes = secondLine + secondLine + secondLine

final = fullShloka + firstThreeTimes + secondThreeTimes + thirdThreeTimes + fourthThreeTimes + firstLineThreeTimes + secondLineThreeTimes + fullShloka + fullShloka + fullShloka

outputWav = fileName + "_prepared.wav"
outputVideo = fileName + "_prepared.avi"
jpgFile = fileName + ".jpg"
print('Exporting output wav file to ' + outputWav)
# file_handle = final.export("./" + fileName + "_prepared.mp3", format="mp3")
print("Wav file export STARTED...")
file_handle = final.export(outputWav, format="wav")
print("Wav file export DONE...")
# file_handle = firstSeg.export("./" + fileName + "_firstSeg.mp3", format="mp3")
# file_handle = secondSeg.export("./" + fileName + "_secondSeg.mp3", format="mp3")
# file_handle = thirdSeg.export("./" + fileName + "_thirdSeg.mp3", format="mp3")
# file_handle = fourthSeg.export("./" + fileName + "_fourthSeg.mp3", format="mp3")
# file_handle = firstLine.export("./" + fileName + "_firstLine.mp3", format="mp3")
# file_handle = secondLine.export("./" + fileName + "_secondLine.mp3", format="mp3")

print("AVI file export STARTED...")
cmd = "ffmpeg -loop 1 -y -i " + jpgFile + " -i " + outputWav  + " -shortest -acodec copy -vcodec mjpeg " + outputVideo 
subprocess.call(cmd, shell=True)                                     # "Muxing Done
print("AVI file export DONE...")
