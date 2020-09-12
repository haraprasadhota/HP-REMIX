#update HP-REMIX
echo -e "\e[1;34m Downloading Latest Files..."
git clone https://github.com/haraprasadhota/HP-REMIX
if [[ -s HP-REMIX/HP-REMIX.sh ]];then
cd HP-REMIX
cp -r -f * .. > temp
cd ..
rm -rf  HP-REMIX >> temp
rm update.sh >> temp
rm temp
chmod +x HP-REMIX
fi
echo -e "\e[1;32m HP-REMIX Will Restart Now..."
echo -e "\e[1;32m All The Required Packages Will Be Installed..."
echo -e "\e[1;34m Press Enter To Proceed To Restart..."
read a6
cd
cd HP-REMIX
./HP-REMIX.sh
