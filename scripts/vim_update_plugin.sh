
CURDATE=`date +%F`
echo $CURDATE
CURTIME=`date +%H%M%S`
echo $CURTIME

cd ~
rm -rf _vim
cp -rf .vim _vim
rm -vf vim_plugin_*.tgz
tar zcvf vim_plugin_$CURDATE\_$CURTIME.tgz _vim/
rm -rf _vim
