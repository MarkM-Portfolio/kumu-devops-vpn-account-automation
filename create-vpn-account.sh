#!/bin/bash

VPN_USERNAME=$1
VPN_PASSWORD=$2

echo -e "*** VPN User Account automation ***"
echo -e ""
# read -p "Enter VPN username: " VPN_USERNAME

# echo -e ""
# echo -e "Generating Password..."
# echo -e ""

# VPN_PASSWORD=$(python3 password-generator.py)
VPN_ALIAS=$VPN_USERNAME

echo -e "username: $VPN_USERNAME"
echo -e "password: $VPN_PASSWORD"

echo -e ""
echo -e "Creating VPN User: $VPN_USERNAME..."
QUERY="INSERT INTO openvpn.user(\`username\`,\`password\`,\`expire_date\`,\`chinese_name\`) VALUES ('$VPN_USERNAME',md5('$VPN_PASSWORD'),'2100-01-01','$VPN_ALIAS');"

mysql -u root -p"UE9T*y7Zs)" -Bse "$QUERY"

# echo mysql -u root -p"'UE9T*y7Zs)'" -Bse \"$QUERY\" | pbcopy

# # echo -e "Login to MySQL Client.."
# #!mysql
# # mysql -u root -p

# echo -e ""
# echo -e "Query VPN Users..."
# mysql -u root -p"UE9T*y7Zs)" -Bse "SELECT * FROM openvpn.user;"

# echo -e ""
# echo -e "View Created VPN Users..."
# SELECT * FROM openvpn.user;

echo -e ""
echo -e "DONE !!!"