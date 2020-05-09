awk '{ print $2 }' text.txt > outputfile.txt # print the second column to a new file

> will redirect STDOUT to a file. If file not exists, it will create it. If file exists it will clear out (in effect) the content and will write new data to it
>> This means same as above but if file exists, this will append new data to it.
https://stackoverflow.com/questions/14660079/how-to-save-the-output-of-this-awk-command-to-file

Hello,
I have a list:
i.e:
Code:
40331786
50331787
30331788
30331789
30331790
50331791
50331792
50331793
70331794
70331795
70331796
...
...

and I need to add text before and after each number:
i.e

Code:
before_40331786_after
before_50331787_after
before_30331788_after
before_30331789_after
before_30331790_after
before_50331791_after
before_50331792_after
before_50331793_after
before_70331794_after
before_70331795_after
before_70331796_after




$ awk '{print "before_"$0"_after"}' infile
$
$ perl -pe 's/(.*)/before_$1_after/' infile


