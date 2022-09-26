#!/usr/bin/env lua
os.execute('touch tsconfig.json')

os.execute('cat ~/Projects/dotfiles/scripts/tsconfig.txt >> tsconfig.json')
