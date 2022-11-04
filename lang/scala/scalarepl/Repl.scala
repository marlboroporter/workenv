import sys.process._
def clear="clear".!
def cmd(cmd:String) = cmd.!!
def ls(dir:String) = println(cmd(s"ls -al $dir"))



