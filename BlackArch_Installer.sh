# *************************************************************************************** #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#                     Agreement between "Haroon Awan" and "You"(user).                    #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#  1. By using this piece of software your bound to these point.                          #
#  2. This an End User License Agreement (EULA) is a legal between a software application #
#     author "Haroon Awan" and (YOU) user of this software.                               #
#  3. This software application grants users rights to use for any purpose or modify and  #
#     redistribute creative works.                                                        #
#  4. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#     what you do with by/this software as your free to use this software.                #
#  5. Any other purpose(s) that it suites as long as it is not related to any kind of     #
#     crime or using it in un-authorized environment.                                     #
#  6. You can use this software to protect and secure your data information in any        #
#     environment.                                                                        #
#  7. It can also be used in state of being protection against the unauthorized use of    #
#     information.                                                                        #
#  8. It can be used to take measures achieve protection.                                 #
# *************************************************************************************** #

#!/bin/bash

red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

function banner() {
clear
echo "                                                                                               ";
echo "                                                                                               ";
echo "                                                                                               ";
echo "        .########...########..######.....#######...##....##.....######.....#######....######....########......########..      "; 
echo "         .##.....##..##.......##....##..##.....##..###...##....##....##...##.....##...##...##...##.....##....##.....##.	 "; 
echo "         .##.....##..##.......##........##.....##..####..##....##.........##.....##...##..##....##......##...##.....##.	 "; 
echo "         .########...######...##........##.....##..##.##.##....##.........##.....##...##..##....#########....#########.	 "; 
echo "         .##...##....##.......##........##.....##..##..####....##.........##.....##...##...##...##....##.....##.....##.	 "; 
echo "         .##....##...##.......##....##..##.....##..##...###....##....##...##.....##...##...###..##.....##....##.....##.	 "; 
echo "         .##.....##..########..######....#######...##....##.....######.....#######....#######...##......##...##.....##.	 ";  
echo "                                       	  Ultimate Recon and Foot Printing Software     Version 1.0a        ";   
echo "                                                        [Coded By: Haroon Awan]                                       ";
echo "                                                   [Contact: mrharoonawan@gmail.com]                                  ";
echo "                                                                                               ";
echo "                                                                                               ";
echo "                                                                                               ";
}

function linux() {
echo -e "$red [$green+$red]$off Installing APT-GET ...";
pacman -S pacaur
pacaur -S apt
echo -e "$red [$green+$red]$off Installing Perl ...";
apt-get install -y perl
echo -e "$red [$green+$red]$off Installing JSON Module ...";
cpan install JSON
echo -e "$red [$green+$red]$off Installing Extra Perl Modules ...";
perl -MCPAN -e  "WWW::Mechanize"
perl -MCPAN -e  "use HTML::TokeParser"
perl -MCPAN -e  "Term::ANSIColor"
perl -MCPAN -e  "Mojo::DOM"
perl -MCPAN -e  "Data::Dumper"
perl -MCPAN -e  "Win32::Console::ANSI"
perl -MCPAN -e  "HTML::TableExtract"
perl -MCPAN -e  "Data::Validate::Domain"
perl -MCPAN -e  "LWP::Protocol::https"
perl -MCPAN -e  "Mozilla::CA"
perl -MCPAN -e  "Bundle::LWP"


echo -e "$red [$green+$red]$off Checking directories..."
if [ -d "/usr/share/ReconCobra" ]; then
    echo -e "$red [$green+$red]$off A Directory ReconCobra Was Found! Do You Want To Replace It? [Y/n]:" ;
    read replace
    if [ "$replace" = "Y" ]; then
      rm -r "/usr/share/ReconCobra"
      rm "/usr/share/icons/ReconCobra.png"
      rm "/usr/share/applications/ReconCobra.desktop"
      rm "/usr/local/bin/ReconCobra"

else
echo -e "$red [$green+$red]$off If You Want To Install You Must Remove Previous Installations";
        exit
    fi
fi 

echo -e "$red [$green+$red]$off Installing ...";
echo -e "$red [$green+$red]$off Creating Symbolic Link ...";
echo -e "#!/bin/bash
perl /usr/share/ReconCobra/ReconCobra.pl" '${1+"$@"}' > "ReconCobra";
    chmod +x "ReconCobra";
    mkdir "/usr/share/ReconCobra"
    cp "installer.sh" "/usr/share/ReconCobra"
    cp "ReconCobra.pl" "/usr/share/ReconCobra"
    cp "config/ReconCobra.jpeg" "/usr/share/icons"
    cp "config/ReconCobra.desktop" "/usr/share/applications"
    cp "ReconCobra" "/usr/local/bin/"
    rm "ReconCobra";

echo -e "$red [$green+$red]$off Installing dependencies..."
echo "y" | apt-get install xdg-utils
echo "y" | apt-get install cargo
echo "y" | apt-get install python-yaml
echo "y" | apt-get install hping3
echo "y" | apt-get install python2.7
echo "y" | apt-get install python3
echo "y" | apt-get install x11-utils xutils-dev imagemagick libxext-dev xspy
echo "y" | apt-get install golang
echo "y" | apt-get install curl
echo "y" | apt-get install nfs-common
echo "y" | apt-get install smbclient
echo "y" | apt-get install gem
gem install wayback_machine_downloader
echo "y" | apt-get install perl-LWP-Protocol-https
echo "y" | git clone https://github.com/xroche/httrack.git --recurse
cd httrack
./configure --prefix=$HOME/usr && make -j8 && make install
cd ..
echo "y" | git clone https://github.com/haroonawanofficial/cobra.git
echo "y" | git clone https://github.com/haroonawanofficial/maahro.git
echo "y" | git clone https://github.com/haroonawanofficial/ShaheenX.git
echo "y" | git clone https://github.com/chenjj/CORScanner.git
cd CORScanner
pip install -r requirements.txt
cd ..
echo "y" | git clone https://github.com/stormshadow07/HackTheWorld.git
cd HackTheWorld
chmod +x install.sh && ./install.sh
cd ..
echo "y" | git clone https://github.com/threat9/routersploit
cd routersploit
easy_install pip
pip install -r requirements.txt
cd ..
echo "y" | git clone https://github.com/yassineaboukir/Asnlookup.git
echo "y" | git clone https://github.com/exiftool/exiftool.git
echo "y" | git clone https://github.com/GerbenJavado/LinkFinder.git
echo "y" | git clone https://github.com/sensepost/BiLE-suite.git
echo "y" | git clone https://github.com/haroonawanofficial/vasl.git
echo "y" | git clone https://github.com/haroonawanofficial/panthera.git
echo "y" | git clone https://github.com/naqushab/SearchEngineScrapy.git
echo "y" | git clone https://github.com/heycam/json-describe
cd json-describe
cargo build
cd ..
echo "y" | apt-get install nmap
echo "y" | apt-get install xrdp
pip install jsbeautifier
pip install argparse
pip install requests
pip install request
cd SearchEngineScrapy
pip install -r requirements.txt
virtualenv --python="2" env
env/bin/activate
cd ..
echo "y" | git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/setup
chmod u+x setup.sh
./setup.sh
cd ..
cd ..
chmod u+x *.sh
cp * -r /usr/share/ReconCobra
cp *.sh /usr/share/ReconCobra
cat traceroute-function >> ~/.bashrc
source ~/.bashrc

if [ -d "/usr/share/ReconCobra" ] ;
then
echo -e "$red [$green+$red]$off ReconCobra Successfully Installed, Starting";
sleep 2;
ReconCobra
else
echo -e "$red [$green+$red]$off ReconCobra Cannot Be Installed. Trying using Portable Edition !";
    exit
fi 
}

if [ -d "/usr/bin/" ];then
banner
echo -e "$red [$green+$red]$off ReconCobra Will Be Installed In Your System";
linux
else
echo -e "$red [$green+$red]$off ReconCobra Cannot Be Installed. Trying using Portable Edition !";
    exit
fi
