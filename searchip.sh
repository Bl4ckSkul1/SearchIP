#!/bin/bash
#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
#-------------------------------------------------------------------------------------------------------------------------------------------------------
function banner (){

echo -e "${greenColour}███████╗███████╗ █████╗ ██████╗  ██████╗██╗  ██╗██╗██████╗ ${endColour}"
echo -e "${greenColour}██╔════╝██╔════╝██╔══██╗██╔══██╗██╔════╝██║  ██║██║██╔══██╗${endColour}"
echo -e "${greenColour}███████╗█████╗  ███████║██████╔╝██║     ███████║██║██████╔╝${endColour}"
echo -e "${greenColour}╚════██║██╔══╝  ██╔══██║██╔══██╗██║     ██╔══██║██║██╔═══╝ ${endColour}"
echo -e "${greenColour}███████║███████╗██║  ██║██║  ██║╚██████╗██║  ██║██║██║     ${endColour}"
echo -e "${greenColour}╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝     ${endColour}"
echo -e "${greenColour}                           by Bl4ckSkull                                ${endColour}"



}

#------------------------------------------------------------------------------------------------------------------------------------------------------
if [ $1 == ""] 2>/dev/null
then
banner
echo -e "${redColour}[X]${endColour} Error !!!"
 echo -e "${greenColour}[i]${endColour} Ingresa el Segmento de Red"
echo -e "${greenColour}[i]${endColour} Ejemplo : searchip.sh 192.168.100"

else

banner
echo -e  "${yellowColour}[i]${endColour} ${turquoiseColour}Las Maquinas activas son :${endColour} "
for ip in $(seq 1 254); 
do
ping -c 1 $1.$ip | grep from | cut -d " " -f 4| tr -d ":" &

done
sleep 1
fi
