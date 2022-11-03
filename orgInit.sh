echo "---"
echo "Set DevHub instance"
sfdx config:set instanceUrl="${dhMySalesforceDomain}"

echo "---"
echo "Register the Devhub"
${dhSessionId} > sfdx auth:accesstoken:store --instanceurl "${dhMySalesforceDomain}" --setalias "${dhALIAS}" --noprompt

echo "---"
echo "Show the Devhub's URL"
sfdx force:org:open --urlonly --targetusername "${dhALIAS}"

echo "---"
echo "Create Scratch Org"
sfdx force:org:create --definitionfile="config/project-scratch-def.json" --durationdays=30 --setalias="${soALIAS}" --targetdevhubusername "${dhALIAS}" --wait=30 --json

echo "---"
echo "Open Scratch Org"
sfdx force:org:open --urlonly -u "${soALIAS}"

echo "---"
echo "Push Metadata"
sfdx force:source:push -u "${soALIAS}"
