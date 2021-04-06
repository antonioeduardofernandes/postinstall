#!/bin/bash

CODE_EXTENSIONS=(
"aaron-bond.better-comments"
"azemoh.one-monokai"
"christian-kohler.path-intellisense"
"CoenraadS.bracket-pair-colorizer"
"esbenp.prettier-vscode"
"hollowtree.vue-snippets"
"JamesBirtles.svelte-vscode"
"jdinhlife.gruvbox"
"naumovs.color-highlight"
"octref.vetur"
"PKief.material-icon-theme"
"praveencrony.total-lines"
"pustelto.bracketeer"
)

for EXTENSION in "${CODE_EXTENSIONS[@]}"
do
	code --install-extension "$EXTENSION"
done

