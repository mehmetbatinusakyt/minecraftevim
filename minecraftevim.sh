clear
echo "#     # #                                                 ####### #     # #       "
echo "##   ##   #    # ######  ####  #####    ##   ###### ##### #       #     #   #    #"
echo '# # # # # ##   # #      #    # #    #  #  #  #        #   #       #     # # ##  ##'
echo '#  #  # # # #  # #####  #      #    # #    # #####    #   #####   #     # # # ## #'
echo '#     # # #  # # #      #      #####  ###### #        #   #        #   #  # #    #'
echo '#     # # #   ## #      #    # #   #  #    # #        #   #         # #   # #    #'
echo '#     # # #    # ######  ####  #    # #    # #        #   #######    #    # #    #'
echo ''
echo ''
echo ''
if [ ! -f kuruldu ]; then
echo 'İstediğiniz server sürümünü seçiniz.'
echo '1) 1.8.8 Paper 2) 1.12.2 Paper 3) 1.14.4 Paper 4) 1.16.5 Paper'
echo ''
read surum



if [ ! -f server.jar ]; then
if [ surum=="1" ]; then
curl https://papermc.io/api/v2/projects/paper/versions/1.8.8/builds/443/downloads/paper-1.8.8-443.jar > paper-1.8.8-443.jar
mv paper-1.8.8-443.jar server.jar
touch kuruldu
fi
fi
if [ ! -f server.jar ]; then
if [ surum=="2" ]; then
wget https://papermc.io/api/v2/projects/paper/versions/1.12.2/builds/1618/downloads/paper-1.12.2-1618.jar > paper-1.12.2-1618.jar
mv paper-1.12.2-1618.jar server.jar
touch kuruldu
fi
fi

if [ ! -f server.jar ]; then
if [ surum=="3" ]; then
wget https://papermc.io/api/v2/projects/paper/versions/1.14.4/builds/243/downloads/paper-1.14.4-243.jar > server.jar
touch kuruldu
fi
fi

if [ ! -f server.jar ]; then
if [ surum=="4" ]; then
wget https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/790/downloads/paper-1.16.5-790.jar > server.jar
touch kuruldu
fi
fi

fi

if [ -f kuruldu ]; then
java -Xms128M -Xmx1024M -jar server.jar
fi

if [ ! -f server.properties ]; then
    echo -e "server.properties indiriliyor"
    curl -o server.properties https://raw.githubusercontent.com/parkervcp/eggs/master/minecraft/java/server.properties
fi
