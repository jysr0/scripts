#!/bin/sh

clipfile="$HOME/.cache/clipboard_history.txt"
nlholder="<NEWLINE>"












multiline=$(echo "$clip" | sed ':a;N;$!ba;s/\n/'"$nlholder"'/g')
