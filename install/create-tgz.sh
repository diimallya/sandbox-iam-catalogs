#!/usr/bin/env bash
echo 'tar process started .............................'

cd ..

rm -rfd temp
mkdir temp

cp -r ./terraform/ ./temp/

cd temp

cd 1-rg/
rm -rf .git .gitignore
cd ..
COPYFILE_DISABLE=1 tar czfv 1-rg-0.0.1.tgz 1-rg/

cd 2-ag-accesspolicies/
rm -rf .git .gitignore
cd ..
COPYFILE_DISABLE=1 tar czfv 2-ag-accesspolicies-0.0.1.tgz 2-ag-accesspolicies/

echo 'tar process completed .............................'
