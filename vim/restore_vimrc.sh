#!/bin/bash
CURRENT_VIMRC="$HOME/.vimrc"
BACKUP_VIMRC="$HOME/.vimrc.backup"
GT_VIMRC="./gt_vimrc"

echo "--- Restoring old .vimrc ---"
if [[ -f "$BACKUP_VIMRC" ]]
then
    echo "  Replacing '$CURRENT_VIMRC' with '$BACKUP_VIMRC'"
    eval "cp -f $BACKUP_VIMRC $CURRENT_VIMRC"
    echo "  Done!"
    echo "  Removing '$BACKUP_VIMRC'"
    echo "  Done!"
else
    echo "  File '$BACKUP_VIMRC' does not exist"
    echo "  Removing '$CURRENT_VIMRC'"
    eval "rm -f $CURRENT_VIMRC"
    echo "  Done!"
fi
echo "--- Restoration complete!"
