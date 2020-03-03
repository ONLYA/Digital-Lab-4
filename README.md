git config --global alias.coa '!git add -A && git commit -m'### Assembler Program with GUI
The assembler locates in ROM_DATA folder.

To run the assembler, click *cgui* directly, or enter `./cgui` in terminal window.

**Note that this only works in Linux! *cgui* is dependant to *compile*

This assembler is an Integrated Development Environment as it can create new, open, save and compile files. The compiled file will be copied into the clipboard and displayed in the output window.

The source file is in the extension of *.asm*.

It has a few Shortcut keys:
* `Ctrl-S` to save the source file
* `Ctrl-Shift-S` to save the source file as
* `Ctrl-\` to compile the source file
* `Ctrl-Q` to display a simple programming guide
* `Ctrl-N` to create a new source file
* `Ctrl-O` to Open a source file

### u shell script
This script is used to pull and push updates for GitHub. To use it to commit with message ("Commit messages" for example), in terminal window:
```git config --global alias.coa '!git add -A && git commit -m'
# Only Run the following line at the first time
git config --global alias.coa '!git add -A && git commit -m'

# Pull and Update with the command below
./u "Commit messages"
```
