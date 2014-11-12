#!/bin/bash
echo "Welcome, I am ready to decrypt your file/folder:"
echo "currently I have a limitation, Place me to the same folder, where an encrypted file is present"
echo "Enter the Exact File Name with extension"
read file;
gpg -d $file > $file.txt
echo "I have decrypted the file sucessfully..."

echo "Do you want to remove the encypted file"
read remove
if [[ $remove == 'y' || $remove == 'Y' ]];
then
echo "Thanks, I will be removing the encrypted file"
rm -rf $file
echo "Your file has been deleted!!!"

else
echo "OK....I'm not removing it. But be careful!!!"
fi
