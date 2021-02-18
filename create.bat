mkdir %1
cd %1
echo %1 >> README.txt
git init
git config --global user.email nagar@teampdi.com
git config --global user.name admin1
mkdir DOC
echo "This is Doc" >> .\doc\README.txt

mkdir SCH
echo "This is SCH" >> .\sch\README.txt

mkdir SOFT
echo "This is SOFT" >> .\SOFT\README.txt

mkdir PCB
echo "This is PCB" >> .\PCB\README.txt

mkdir BOM
echo "This is BOM" >> .\BOM\README.txt

mkdir Change-Deviation
echo "This is Change-Deviation" >> .\Change-Deviation\README.txt

mkdir Datasheet
echo "This is Datasheet" >> .\Datasheet\README.txt

mkdir DWG
echo "This is DWG" >> .\DWG\README.txt

mkdir Gerbers
echo "This is Gerbers" >> .\Gerbers\README.txt

mkdir Production Releasecd 
echo "This is Production-Releasecd" >> .\Production-Releasecd\README.txt

mkdir Stencil
echo "This is Stencil" >> .\Stencil\README.txt

git add --all
git commit -m "Creating Project"
git remote rm origin
git remote add origin http://104.197.208.192:3000/admin1/%1.git
git push -u origin master



