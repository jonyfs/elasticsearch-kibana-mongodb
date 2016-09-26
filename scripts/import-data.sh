

command -v foo >/dev/null 2>&1 || { 
	sh /scripts/install-git.sh
}

sh /scripts/git-clone-northwind.sh

cd northwind-mongo

for f in *.csv
do
    filename=$(basename "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo importing $filename
    mongoimport -h mongodb1:27017 -d Northwind -c "$filename" --type csv --file "$f" --headerline
done

echo finished!