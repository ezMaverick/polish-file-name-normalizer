# Polish File Name Normalizer

A simple Windows batch script that automatically renames files in-place: replaces spaces with hyphens, converts Polish characters to ASCII, removes other special characters, converts filenames to lowercase, preserves extensions, and skips the script itself for safe, clean filenames.

### Features

- Replaces **spaces** with hyphens (`-`)  
- Converts **Polish characters** (ą, ć, ę, ł, ń, ó, ś, ź, ż) to ASCII  
- Converts filenames to **lowercase**  
- **Removes all other special characters** (keeps letters, numbers, hyphens, and dots)  
- Preserves **file extensions**  
- Skips the batch script itself to avoid renaming itself  

---

## Usage

1. Download or clone this repository.  
2. Place `rename_files.bat` in the folder containing the files you want to rename.  
3. Double-click the `.bat` file to run it.  
4. All files in the folder will be renamed automatically.

---

## Example

**Before running the script:**

Świąteczny plik 2025!.txt

Mój (dokument).pdf

**After running the script:**

swiateczny-plik-2025.txt

moj-dokument.pdf
