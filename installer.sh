#!/bin/bash
clear
echo "
 ____
|  _ \ _ __ ___   __ _ _ __ __ _ _ __ ___  _ __ ___   ___ _ __
| |_) | '__/ _ \ / _` | '__/ _` | '_ ` _ \| '_ ` _ \ / _ \ '__|
|  __/| | | (_) | (_| | | | (_| | | | | | | | | | | |  __/ |
|_|   |_|  \___/ \__, |_|  \__,_|_| |_| |_|_| |_| |_|\___|_|
                 |___/        
                                                ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/dodo" ] ;
then
echo "[◉] A directory dodo was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/dodo"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/programmerrush/hash1.git /usr/share/doc/dodo;
 echo "#!/bin/bash 
 python /usr/share/doc/dodo/dodo.py" '${1+"$@"}' > dodo;
 chmod +x crips;
 sudo cp dodo /usr/bin/;
 rm dodo;


if [ -d "/usr/share/doc/dodo" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute tool by typing crips  !     ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
