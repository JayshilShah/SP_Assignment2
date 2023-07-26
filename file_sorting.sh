read -p "Enter a directory name:" dname	

# To check whether the directory exist or not.
if [ -d $dname ]     
then
	echo "Directory $dname exist"
else
	echo "Directory $dname doesn't exist"
	echo "$exit"
fi

# To show the list of files in the directory
files=$(ls "$dname")
echo "Files in the directory $dname"
echo "$files"

# To show the list of files alphabetically
sorted_files=$(ls "$dname" | sort)
echo "Sorted files in the directory $dname"
echo "$sorted_files"

# To move to the directory
#cd "$dname"

# To make a new directory inside existing directory
mkd=$(mkdir "$dname/sorted")
echo $mkd

# To move files from one folder to another
count=0
for element in $sorted_files
do
	cp "$dname/$element" "$dname/sorted"
	let count++
done

echo "Total $count files moved successfully."

