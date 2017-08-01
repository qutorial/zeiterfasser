#!/bin/bash


read -p "Please, give your app a name, e.g. Apple Pie: " name
read -p "Potential domain name, e.g. yourapp.com: " domain
read -p "Devise password score 1-6: " passscore

big=`echo $name | sed 's/[[:blank:]]//g'`
small=`echo "$big"  | tr '[:upper:]' '[:lower:]'`

files=( "package.json" "config/application.rb" "config/secrets.yml" "config/environments/production.rb" "config/cable.yml"\
        "app/views/layouts/application.html.erb" )

for f in "${files[@]}"
do
  echo Changing: $f

  rand1=`hexdump -n 64 -e '4/4 "%08X" 1 ""' /dev/urandom`
  rand2=`hexdump -n 64 -e '4/4 "%08X" 1 ""' /dev/urandom`
  rand3=`hexdump -n 64 -e '4/4 "%08X" 1 ""' /dev/urandom`
  rand4=`hexdump -n 64 -e '4/4 "%08X" 1 ""' /dev/urandom`
  rand5=`hexdump -n 64 -e '4/4 "%08X" 1 ""' /dev/urandom`

  sed "s/SSsmallSS/$small/g" "$f" |\
	sed "s/SSbigSS/$big/g" |\
	sed "s/SSnameSS/$name/g" |\
	sed "s/SSdomainSS/$domain/g" |\
	sed "s/SSpassscoreSS/$passscore/g" |\
	sed "s/SSrand1SS/$rand5/g" |\
	sed "s/SSrand2SS/$rand4/g" |\
	sed "s/SSrand3SS/$rand3/g" |\
	sed "s/SSrand4SS/$rand2/g" |\
	sed "s/SSrand5SS/$rand1/g" 2>&1 > ./tmp/output.txt

  mv ./tmp/output.txt "$f"
  cat "$f"
  echo "----"

done


