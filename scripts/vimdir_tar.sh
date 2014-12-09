#!/bin/sh

CURDATE=`date +%F`
echo $CURDATE
CURTIME=`date +%H%M%S`
echo $CURTIME

cd ~
rm -rf _vim
rm -rf .vim/.swap/*
rm -rf .vim/.undodir/*
cp -rf .vim _vim
rm -vf vim_plugins*.tgz
tar zcvf vim_plugins_$CURDATE\_$CURTIME.tgz --exclude=.git _vim/
rm -rf _vim
