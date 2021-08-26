-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\im000556\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\im000556\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\im000556\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\im000556\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\im000556\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["caw.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\caw.vim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\clever-f.vim"
  },
  ["ctrlp-git"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ctrlp-git"
  },
  ["ctrlp-launcher"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ctrlp-launcher"
  },
  ["ctrlp-lsp"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ctrlp-lsp"
  },
  ["ctrlp-yo"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ctrlp-yo"
  },
  ["ctrlp.vim"] = {
    config = { "\27LJ\2\nW\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0008source ~/.config/nvim/rc/pluginconfig/101-ctrlp.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ctrlp.vim"
  },
  ["deol.nvim"] = {
    config = { "\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/103-deol.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\deol.nvim"
  },
  ["deoplete-vim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\deoplete-vim-lsp"
  },
  ["deoplete-zsh"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\deoplete-zsh"
  },
  ["deoplete.nvim"] = {
    config = { "\27LJ\2\nZ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0;source ~/.config/nvim/rc/pluginconfig/100-deoplete.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\deoplete.nvim"
  },
  ["elly.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\elly.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\emmet-vim"
  },
  ["emoji-vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\emoji-vim"
  },
  ["eskk.vim"] = {
    config = { "\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/111-eskk.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\eskk.vim"
  },
  ["fern-hijack.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fern-hijack.vim"
  },
  ["fern-renderer-nerdfont.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fern-renderer-nerdfont.vim"
  },
  ["fern.vim"] = {
    config = { "\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/102-fern.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fern.vim"
  },
  ["gina.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gina.vim"
  },
  ["glyph-palette.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\glyph-palette.vim"
  },
  ["gyazo.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gyazo.vim"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\iceberg.vim"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lexima.vim"
  },
  ["lightline.vim"] = {
    config = { "\27LJ\2\n[\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0<source ~/.config/nvim/rc/pluginconfig/200-lightline.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lightline.vim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\markdown-preview.nvim"
  },
  ["nerdfont.vim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdfont.vim"
  },
  ["nvim-miniyank"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-miniyank"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n\\\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0=source ~/.config/nvim/rc/pluginconfig/104-treesitter.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\quick-scope"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\registers.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive"
  },
  ["vim-gitbranch"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gitbranch"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gitgutter"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-highlightedyank"
  },
  ["vim-lsp"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0002source ~/.config/nvim/rc/pluginconfig/lsp.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-lsp"
  },
  ["vim-lsp-icons"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-lsp-icons"
  },
  ["vim-lsp-settings"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-lsp-settings"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/markdown.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-markdown"
  },
  ["vim-projectroot"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-projectroot"
  },
  ["vim-quickrun"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-quickrun"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-sandwich"
  },
  ["vim-sonictemplate"] = {
    config = { "\27LJ\2\n_\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0@source ~/.config/nvim/rc/pluginconfig/110-sonictemplate.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-sonictemplate"
  },
  vimspector = {
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimspector"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nX\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0009source ~/.config/nvim/rc/pluginconfig/102-wilder.vim\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\im000556\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: deoplete.nvim
time([[Config for deoplete.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0;source ~/.config/nvim/rc/pluginconfig/100-deoplete.vim\bcmd\bvim\0", "config", "deoplete.nvim")
time([[Config for deoplete.nvim]], false)
-- Config for: ctrlp.vim
time([[Config for ctrlp.vim]], true)
try_loadstring("\27LJ\2\nW\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0008source ~/.config/nvim/rc/pluginconfig/101-ctrlp.vim\bcmd\bvim\0", "config", "ctrlp.vim")
time([[Config for ctrlp.vim]], false)
-- Config for: fern.vim
time([[Config for fern.vim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/102-fern.vim\bcmd\bvim\0", "config", "fern.vim")
time([[Config for fern.vim]], false)
-- Config for: vim-sonictemplate
time([[Config for vim-sonictemplate]], true)
try_loadstring("\27LJ\2\n_\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0@source ~/.config/nvim/rc/pluginconfig/110-sonictemplate.vim\bcmd\bvim\0", "config", "vim-sonictemplate")
time([[Config for vim-sonictemplate]], false)
-- Config for: deol.nvim
time([[Config for deol.nvim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/103-deol.vim\bcmd\bvim\0", "config", "deol.nvim")
time([[Config for deol.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n\\\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0=source ~/.config/nvim/rc/pluginconfig/104-treesitter.vim\bcmd\bvim\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: eskk.vim
time([[Config for eskk.vim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/111-eskk.vim\bcmd\bvim\0", "config", "eskk.vim")
time([[Config for eskk.vim]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/markdown.vim\bcmd\bvim\0", "config", "vim-markdown")
time([[Config for vim-markdown]], false)
-- Config for: lightline.vim
time([[Config for lightline.vim]], true)
try_loadstring("\27LJ\2\n[\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0<source ~/.config/nvim/rc/pluginconfig/200-lightline.vim\bcmd\bvim\0", "config", "lightline.vim")
time([[Config for lightline.vim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nX\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0009source ~/.config/nvim/rc/pluginconfig/102-wilder.vim\bcmd\bvim\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: vim-lsp
time([[Config for vim-lsp]], true)
try_loadstring("\27LJ\2\nQ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0002source ~/.config/nvim/rc/pluginconfig/lsp.vim\bcmd\bvim\0", "config", "vim-lsp")
time([[Config for vim-lsp]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
