#!/usr/bin/env lua
-- local set_content = function(file)
--   -- file:write(
--   --   '{\n',
--   --   ' "compilerOptions": {\n',
--   --   ' "target": "es2019",\n',
--   --   ' "module": "commonjs",\n',
--   --   ' "sourceMap": true,\n',
--   --   ' "outDir": "./build",\n'
--     -- 'windows: \n',
--     -- '  - editor: \n',
--     -- '      layout: even-horizontal \n',
--     -- '      panes: \n',
--     -- '        - nvim -c \':q\' ; nvim \n',
--     -- '        -  \n',
--     -- '  - notes: \n',
--     -- '  - test: '..testArg..' \n'
--     -- )
-- end

os.execute('touch tsconfig.json')

os.execute('cat ~/Projects/dotfiles/scripts/tsconfig.txt >> tsconfig.json')
