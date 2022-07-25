local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Master configs
require('settings')
require('plugins')
require('keymappings')
require('after')

-- vim.cmd[[
-- set statusline+=%#warningmsg#
-- set statusline+=%{SyntasticStatuslineFlag()}
-- set statusline+=%*
--
-- let g:syntastic_always_populate_loc_list = 1
-- let g:syntastic_auto_loc_list = 1
-- let g:syntastic_check_on_open = 1
-- let g:syntastic_check_on_wq = 0
-- ]]
