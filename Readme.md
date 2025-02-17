Shellscript to include the artist, album and title of any given .mp3 into the filename.
use it with care tho, i am not sure if it actually behaves as expect at all times - i have not included a excpection for what happens if the Variable isnt filled during one pass
i am also not sure about that copycommand, it might very well not work as expected at all times. So i commented out the cp-command so you can first check if the FILENAME-Variable for each file in question that would get created. 
If the filename is correct, feel free to uncomment cp altought i suggest running it on small samplesizes so you can go and fix up things if something doesnt work.
