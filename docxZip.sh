# Doc X Doctor NCL Fall Gym
 
 
# Open a terminal and navigate to the directory where the .docx file is saved using cd:
cd /path/to/your/directory


# Step 1: Rename the File to .zip: Rename the .docx file to a .zip archive to enable extraction
mv SuperAwesomeDoc.docx SuperAwesomeDoc.zip


# Step 2: Extract the Contents: Use the unzip command to extract the contents of the .zip file:
unzip SuperAwesomeDoc.zip -d extracted_files

# Step 3a: This will create a directory named extracted_files containing the extracted files.
# Navigate to the word Directory: Change into the word directory where the document's data is stored:
cd extracted_files/word

# Step 3b: Locate the media Directory: Check the media directory inside word:
cd media
ls

# This should list all images stored in the document.
# Step 4: Identify the Hidden Image: You might see more image files than you expect. Open each image using an image viewer or use a file preview command:
eog image1.png  # Replace with actual image names as needed

# If working with the command line only, use file or strings:
file image*.png  # Check file type
strings image5.png | grep "flag"  # Look for text in an image suspected of containing hidden information

# Inspect for Hidden Information: Once you identify the image file that is not visibly part of the document, it might contain a hidden message or flag. Open it with an image viewer to verify visually or analyze it with exiftool for metadata:
exiftool image5.png  # Check for metadata hints

# Verify the Answers by opening file and checking for image information
# File Name: Identify the name of the image file containing the flag (e.g., hidden_image.png).

# Flag: Open the identified image and look for text or hidden data that resembles a flag. Sometimes, you may need to use steghide or similar tools if the data is steganographically hidden:
# In this case image0.png contained the flag and was able to complete challenge by identifying file name with flag and findaing flag.