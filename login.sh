#!/data/data/com.termux/files/usr/bin/bash

termux-tts-speak installing python

pkg install python -y
clear
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login



DIR="/data/data/com.termux/files/usr/etc/motd"
if [ -d "$DIR" ]; then
  ### Take action if $DIR doesnt exists ###
  rm /data/data/com.termux/files/usr/etc/motd
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo " "
fi


DIR1="/data/data/com.termux/files/usr/share/login/"
if [ -d "$DIR1" ]; then
	echo " "
else
  # Take action if $DIR exists. #
  mkdir /data/data/com.termux/files/usr/share/login/
fi

FILES=/data/data/com.termux/files/usr/bin/python
if [ -f $FILES ]
then
 echo
else
 echo
 echo "Re-run : bash HP-REMIX.sh "
 exit 0
fi

#TODO: hide input
echo " "
echo " "
echo -e "\e[32m-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+- \e[m "
echo " "

termux-tts-speak please wait

echo -e "\e[34m[*]\e[m \e[33mplease wait \e[m"
sleep 3

termux-tts-speak setting

echo -e "\e[34m[*]\e[m \e[33msetting up user input \e[m"
sleep 3

termux-tts-speak setting up user

echo -e "\e[34m[*]\e[m \e[33mcreate a password \e[m"
sleep 2

termux-tts-speak save user input

echo -e "\e[34m[*]\e[m \e[33msave user input \e[m"
echo " "
echo -e "\e[32m-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+- \e[m "
echo " "
sleep 2
clear
echo
echo

termux-tts-speak enter password

echo -e  "\e[32mEnter password for login: \e[m"
read passone

termux-tts-speak repeat password

echo -e "\e[32mRepeat password: \e[m "
read passtwo
sleep 3
echo " "
if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
echo -e "\e[31m[*]\e[32mLogin succesfully installed \e[m"
echo " "
elif [ $passone != $passtwo ];
then
	echo 'Password dont match'
fi
