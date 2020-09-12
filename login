#!/data/data/com.termux/files/usr/bin/sh

xdg-open https://www.youtube.com/channel/UCQLD2PaQjy2iL8EgJnVFn9A

echo " "
echo " "
echo " "
echo "
     ━━━━━━━━━━━━━━━━━━━━━━━━ [★] L O G I N [★] ━━━━━━━━━━━━━━━━━━━━━━━━━━━
                        " |lolcat
  


echo "

██╗  ██╗██╗███╗   ██╗ ██████╗                   
██║ ██╔╝██║████╗  ██║██╔════╝                   
█████╔╝ ██║██╔██╗ ██║██║  ███╗                  
██╔═██╗ ██║██║╚██╗██║██║   ██║                  
██║  ██╗██║██║ ╚████║╚██████╔╝                  
╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝                   
                                                
██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ 
██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
███████║███████║██║     █████╔╝ █████╗  ██████╔╝
██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                                 "|lolcat

echo "
     ━━━━━━━━━━━━━━━━━━━━━━━━━ [★] W E L C O M E [★] ━━━━━━━━━━━━━━━━━━━━━━━━

                              " |lolcat
echo " "
echo " "

xdg-open https://www.youtube.com/channel/UCQLD2PaQjy2iL8EgJnVFn9A

if [ $# = 0 ] && [ -f $PREFIX/etc/motd ] && [ ! -f ~/.hushlogin ]; then
	cat $PREFIX/etc/motd
fi

if [ -G ~/.termux/shell ]; then
	SHELL="`realpath ~/.termux/shell`"
else
	for file in $PREFIX/bin/bash $PREFIX/bin/sh /system/bin/sh; do
		if [ -x $file ]; then
			SHELL=$file
			break
		fi
	done
fi

if [ -f $PREFIX/lib/libtermux-exec.so ]; then
	export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so
fi

#execute this python file to redirect to password login
exec $PREFIX/bin/login.py "$SHELL" -l "$@"

#default execute
#exec "$SHELL" -l "$@"
