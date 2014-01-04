emacs_server="/Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs --daemon"
emacs_client="/Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient -n -c"

pid=`ps aux|grep Emacs|grep daemon|grep -v grep|awk '{print $2}'`

if [ $pid ]
then
    $emacs_client $* &
else
    $emacs_server $* &
fi
