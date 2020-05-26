
#!/usr/bin/env bash
echo 'tar process started .............................'

cd ..

rm -rfd temp
mkdir temp

cp -r ./terraform/ ./temp/

cd temp

rm -rf .git .gitignore .DS_Store .terraform
COPYFILE_DISABLE=1 tar czfv ResourceGroup-0.0.1.tgz 01-rg/
COPYFILE_DISABLE=1 tar czfv AccessGroup-AccessPolicies-0.0.1.tgz 02-ag-accesspolicies/
COPYFILE_DISABLE=1 tar czfv InviteUsersToCloudAccount-0.0.1.tgz 03-invite-users/
COPYFILE_DISABLE=1 tar czfv AssignUsersToAccessGroup-0.0.1.tgz 04-ag-users/
COPYFILE_DISABLE=1 tar czfv 8-ag-accesspolicy-0.0.1.tgz 08-ag-accesspolicy/
COPYFILE_DISABLE=1 tar czfv 9-ag-0.0.1.tgz 09-ag/

mv *.tgz ../tgz

cd ..
rm -rfd temp

echo 'tar process completed .............................'
