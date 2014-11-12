#!/bin/bash
echo "Welcome, I am ready to encrypt a file/folder of your's:"
echo "currently I have a limitation, Place me to the same folder, where a file to be encrypted is present"
echo "Enter the Exact File Name with extension"
read file;
gpg -c $file
echo "I have encrypted the file sucessfully..."

echo "Do you want to remove the original file"
read remove
if [[ $remove == 'y' || $remove == 'Y' ]];then
echo "Thanks, I will be removing the original file"
rm -rf $file
echo "Your file has been deleted!!!"

else
echo "OK....I'm not removing it. But be careful!!!"
fi
  
