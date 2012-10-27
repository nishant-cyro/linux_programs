printf "Enter the directory to backup: "
read directory

timestamp="`date +"%d_%m_%y_%H%M"`"
backup="backup_"
ext=".tar.gz"

backup_name=$backup$timestamp$ext 


tar -cf $backup_name $directory
