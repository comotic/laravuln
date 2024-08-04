#!/usr/bin/env bash

sleep 20

echo "Generating malicious activity..."

while IFS="" read -r p || [ -n "$p" ]
do
  curl -sH 'accept: application/json' "$(printf 'http://nginx/api/%s\n' "$p")" > /dev/null
done < url.txt

mysql --host mariadb  --user root -pr6VkejvvvuajnF288LCHPJhdG laravuln < ./request.sql > /dev/null

printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
echo -e "\e[41m\e[97mATTACKED!\e[0m Your app had been attacked! Please investigate!"

