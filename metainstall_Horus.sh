clear

apt update && apt upgrade -y

apt install toilet -y

clear

toilet -f pagga HORUS TEAM --filter gay
sleep 2

toilet -f wideterm SYSTEM FAILURE --filter metal
sleep 2

toilet -f wideterm SCRIPT POR HORUS TEAM --filter metal
sleep 3


echo ""
echo "Iniciando Instalacion de Metasploit Framework"
sleep 2

echo ""
echo ""

pkg install autoconf bison clang coreutils curl findutils git apr apr-util libffi-dev libgmp-dev libpcap-dev \
    postgresql-dev readline-dev libsqlite-dev openssl-dev libtool libxml2-dev libxslt-dev ncurses-dev pkg-config \
    wget make ruby-dev libgrpc-dev termux-tools ncurses ncurses-utils libsodium-dev termux-exec -y

sleep 2
clear

echo ""
echo ""
toilet -f wideterm Descargando Paquetes --filter metal

sleep 2

echo ""
echo ""
echo "Iniciando..."
echo ""
echo  "########## (10%)"
sleep 1
echo  "############### (20%)"
sleep 1
echo  "#################### (30%)"
sleep 1
echo  "######################### (40%)"
sleep 1
echo  "############################### (50%)"
sleep 1
echo  "#################################### (70%)"
sleep 1
echo  "###################################### (80%)"
sleep 1
echo  "######################################### (90%)"
sleep 1
echo  "########################################### (100%)"
sleep 2
echo ""
echo "Instalando Paquetes y Librerias espere...."
echo ""

git clone https://github.com/rapid7/metasploit-framework

cd metasploit-framework

gem install bundler

gem install nokogiri -- --use-system-libraries

bundle install -j5


cd $HOME/metasploit-framework/config

curl -LO https://Auxilus.github.io/database.yml

mkdir -p $PREFIX/var/lib/postgresql

initdb $PREFIX/var/lib/postgresql

pg_ctl -D $PREFIX/var/lib/postgresql start

createuser msf

createdb msf_database

sleep 2

clear

echo ""
echo "Metasploit Framework se ha Instalado con Exito"
sleep 2

echo ""
echo ""


toilet -f pagga HORUS TEAM --filter gay
sleep 2
echo ""
echo "==========================================="
toilet -f wideterm SCRIPT POR TEAM HORUS --filter gay
sleep 3
echo "==========================================="
echo ""
toilet -f wideterm SYSTEM FAILURE --filter metal
sleep 1
echo "==========================================="
echo ""
toilet -f wideterm Ag. Perry --filter metal
sleep 1
echo "==========================================="
echo ""
toilet -f wideterm Mithrandir --filter metal
sleep 1
echo "==========================================="
echo ""
toilet -f wideterm Fernando --filter metal
sleep 1
echo "==========================================="
echo ""
toilet -f wideterm Blanco --filter metal
sleep 1
echo "==========================================="
echo ""
toilet -f wideterm Javier Unknown --filter metal
sleep 1
echo "==========================================="
echo ""
toilet -f wideterm HORUS --filter metal
sleep 1
echo "==========================================="
echo ""
toilet -f wideterm Error0x00021 --filter metal
sleep 3
echo "==========================================="
echo ""
echo ""

echo "Cerrando Script"

toilet -f wideterm ABRIENDO MSFCONSOLE --filter metal
sleep 2

cd $HOME/metainstall

mv metasploit-framework $HOME

cd $HOME

rm -rf metainstall

cd $HOME/metasploit-framework

./msfconsole

exit
