#!/bin/bash
RESTORE_FILE="restore_vimrc.sh"
CURRENT_VIMRC="$HOME/.vimrc"
BACKUP_VIMRC="$HOME/.vimrc.backup"
GT_VIMRC="./gt_vimrc"

echo "--- Checking Restoration file permissions ---"

if [[ -x "$RESTORE_FILE" ]]
then
    echo "  File '$RESTORE_FILE' exists and is executable"
elif [[ -f "$RESTORE_FILE" ]]
then
    echo "  File '$RESTORE_FILE' is not executable"
    echo "  Setting '$RESTORE_FILE' as executable"
    eval "  chmod +x $RESTORE_FILE"
    echo "  Done"
else
    echo "  File '$RESTORE_FILE' does not exist"
fi

echo "--- Backup current .vimrc ---"

if [[ -f "$CURRENT_VIMRC" ]]
then
    echo "  Backup '$CURRENT_VIMRC' to '$BACKUP_VIMRC'"
    eval "cp -f $CURRENT_VIMRC $BACKUP_VIMRC"
    echo "  Done!"
else
    echo "  File '$CURRENT_VIMRC' not found."
fi

echo "--- Replace $CURRENT_VIMRC with gt_vimrc"
eval "cp -f $GT_VIMRC $CURRENT_VIMRC"
echo "  Done!"

echo "Installation complete!"
