# List the files in the "train" directory (assuming your files have a specific extension like .jpg)
files_to_move=$(ls train/*.jpg | shuf)

# Move the first 20 files to the "test" directory
echo "$files_to_move" | head -n 4000 | xargs -I {} mv {} test/

