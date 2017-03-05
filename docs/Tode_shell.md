---
layout:  post
title:   "Shell commands"
date:    2017/02/28
tags:
    - Code
    - Shell
categories:
    - Study
---

一些经常使用的linux shell指令
# Shell commands

## part1
### [How to find the Process ID (PID) of a running terminal program?](http://askubuntu.com/questions/180336/how-to-find-the-process-id-pid-of-a-running-terminal-program)

```shell
ps ax | grep foo
```

### [How do I zip/unzip on the unixcommand line?](http://unix.stackexchange.com/questions/6596/how-do-i-zip-unzip-on-the-unix-command-line)

 To compress:

`zip squash.zip file1 file2 file3`

or to zip a directory

`zip -r squash.zip dir1`

To uncompress:

`unzip squash.zip`

this unzips it in yourcurrent working directory.