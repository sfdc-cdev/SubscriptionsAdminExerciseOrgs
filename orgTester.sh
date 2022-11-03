soALIAS="soTestOrg" 
sfdx force:org:create --definitionfile="config/project-scratch-def.json" --durationdays=1 --setalias="${soALIAS}" --setdefaultusername --wait=30 --json
sfdx force:org:open --targetusername="${soALIAS}"
sfdx force:source:push --targetusername="${soALIAS}"

