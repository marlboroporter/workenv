#!/usr/bin/env python

# get url
import sys
if len(sys.argv) == 1:
  print("Please pass git repo url")
  exit
else:
  url = sys.argv[1] 

# extract user/repo
import re
regex = r'((git|https|ssh)://)?(git@)?[a-zA-Z0-9\.]+:([a-zA-Z0-9\-\_\.]+/)?([a-zA-Z0-9\-\_\.]+)(\.git)'
match = re.match(regex,url) 
print(match.group(4))
if match is not None:
    user = match.group(4)
    repo = match.group(5)
    d = user + repo + ".git"
    dl = repo + ".git"

# create a dir
import os
devdir = "~/dev/" + d 
os.mkdir(devdir)

# Create a link to the directory
os.symlink(devdir, os.getcwd + "/" + dl)