-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/miyake.isana/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/miyake.isana/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/miyake.isana/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/miyake.isana/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/miyake.isana/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["bufferline.nvim"] = {
    config = { 'require("pluginconfig.bufferline").config()' },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["bufpreview.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/bufpreview.vim",
    url = "https://github.com/kat0h/bufpreview.vim"
  },
  ["caw.vim"] = {
    config = { 'require("pluginconfig.caw").config()' },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/caw.vim",
    url = "https://github.com/tyru/caw.vim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["ddc-around"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/ddc-around",
    url = "https://github.com/Shougo/ddc-around"
  },
  ["ddc-file"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/ddc-file",
    url = "https://github.com/LumaKernel/ddc-file"
  },
  ["ddc-fuzzy"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/ddc-fuzzy",
    url = "https://github.com/tani/ddc-fuzzy"
  },
  ["ddc-matcher_head"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/ddc-matcher_head",
    url = "https://github.com/Shougo/ddc-matcher_head"
  },
  ["ddc-sorter_rank"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/ddc-sorter_rank",
    url = "https://github.com/Shougo/ddc-sorter_rank"
  },
  ["ddc-vim-lsp"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/ddc-vim-lsp",
    url = "https://github.com/shun/ddc-vim-lsp"
  },
  ["ddc.vim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0006source ~/.config/nvim/rc/pluginconfig/100-ddc.vim\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/ddc.vim",
    url = "https://github.com/Shougo/ddc.vim"
  },
  ["denops-signature_help"] = {
    config = { 'require("pluginconfig.denops-signature_help").config()' },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/denops-signature_help",
    url = "https://github.com/matsui54/denops-signature_help"
  },
  ["denops-skkeleton.vim"] = {
    config = { "\27LJ\2\nW\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0008source ~/.config/nvim/rc/pluginconfig/skkeleton.vim\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/denops-skkeleton.vim",
    url = "https://github.com/vim-skk/denops-skkeleton.vim"
  },
  ["denops.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/denops.vim",
    url = "https://github.com/vim-denops/denops.vim"
  },
  ["deol.nvim"] = {
    cond = { "\27LJ\2\nK\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\b\0\0\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\rg:vscode\vexists\afn\bvim\0\0" },
    config = { "\27LJ\2\nV\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0007source ~/.config/nvim/rc/pluginconfig/103-deol.vim\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/deol.nvim",
    url = "https://github.com/Shougo/deol.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["fern-hijack.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/fern-hijack.vim",
    url = "https://github.com/lambdalisue/fern-hijack.vim"
  },
  ["fern-renderer-nerdfont.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/fern-renderer-nerdfont.vim",
    url = "https://github.com/lambdalisue/fern-renderer-nerdfont.vim"
  },
  ["fern.vim"] = {
    config = { 'require("pluginconfig.fern").config()' },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/fern.vim",
    url = "https://github.com/lambdalisue/fern.vim"
  },
  ["gina.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/gina.vim",
    url = "https://github.com/lambdalisue/gina.vim"
  },
  ["glyph-palette.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/glyph-palette.vim",
    url = "https://github.com/lambdalisue/glyph-palette.vim"
  },
  ["gyazo.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/gyazo.vim",
    url = "https://github.com/skanehira/gyazo.vim"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lexima.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/lexima.vim",
    url = "https://github.com/cohama/lexima.vim"
  },
  ["lightline.vim"] = {
    config = { "\27LJ\2\n[\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0<source ~/.config/nvim/rc/pluginconfig/200-lightline.vim\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["nerdfont.vim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/nerdfont.vim",
    url = "https://github.com/lambdalisue/nerdfont.vim"
  },
  ["nvim-miniyank"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/nvim-miniyank",
    url = "https://github.com/bfredl/nvim-miniyank"
  },
  ["nvim-treesitter"] = {
    config = { 'require("pluginconfig.treesitter").config()' },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
  },
  ["telescope.nvim"] = {
    cond = { "\27LJ\2\nK\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\b\0\0\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\rg:vscode\vexists\afn\bvim\0\0" },
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27pluginconfig/telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-gitbranch"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-gitbranch",
    url = "https://github.com/itchyny/vim-gitbranch"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-lsp"] = {
    cond = { "\27LJ\2\nK\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\b\0\0\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\rg:vscode\vexists\afn\bvim\0\0" },
    config = { "\27LJ\2\nQ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0002source ~/.config/nvim/rc/pluginconfig/lsp.vim\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/vim-lsp",
    url = "https://github.com/prabirshrestha/vim-lsp"
  },
  ["vim-lsp-icons"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-lsp-icons",
    url = "https://github.com/mattn/vim-lsp-icons"
  },
  ["vim-lsp-settings"] = {
    cond = { "\27LJ\2\nK\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\b\0\0\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\rg:vscode\vexists\afn\bvim\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/vim-lsp-settings",
    url = "https://github.com/mattn/vim-lsp-settings"
  },
  ["vim-markdown"] = {
    config = { 'require("pluginconfig.markdown").config()' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-quickrun"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-quickrun",
    url = "https://github.com/thinca/vim-quickrun"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-sandwich",
    url = "https://github.com/machakann/vim-sandwich"
  },
  ["vim-sonictemplate"] = {
    config = { "\27LJ\2\n_\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0@source ~/.config/nvim/rc/pluginconfig/110-sonictemplate.vim\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-sonictemplate",
    url = "https://github.com/mattn/vim-sonictemplate"
  },
  ["vim-vsnip"] = {
    config = { 'require("pluginconfig.vsnip").config()' },
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["wilder.nvim"] = {
    cond = { "\27LJ\2\nK\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\b\0\0\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\rg:vscode\vexists\afn\bvim\0\0" },
    config = { 'require("pluginconfig.wilder").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: fern.vim
time([[Config for fern.vim]], true)
require("pluginconfig.fern").config()
time([[Config for fern.vim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("pluginconfig.treesitter").config()
time([[Config for nvim-treesitter]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
require("pluginconfig.bufferline").config()
time([[Config for bufferline.nvim]], false)
-- Config for: denops-skkeleton.vim
time([[Config for denops-skkeleton.vim]], true)
try_loadstring("\27LJ\2\nW\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0008source ~/.config/nvim/rc/pluginconfig/skkeleton.vim\bcmd\bvim\0", "config", "denops-skkeleton.vim")
time([[Config for denops-skkeleton.vim]], false)
-- Config for: vim-sonictemplate
time([[Config for vim-sonictemplate]], true)
try_loadstring("\27LJ\2\n_\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0@source ~/.config/nvim/rc/pluginconfig/110-sonictemplate.vim\bcmd\bvim\0", "config", "vim-sonictemplate")
time([[Config for vim-sonictemplate]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
require("pluginconfig.vsnip").config()
time([[Config for vim-vsnip]], false)
-- Config for: ddc.vim
time([[Config for ddc.vim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0006source ~/.config/nvim/rc/pluginconfig/100-ddc.vim\bcmd\bvim\0", "config", "ddc.vim")
time([[Config for ddc.vim]], false)
-- Config for: lightline.vim
time([[Config for lightline.vim]], true)
try_loadstring("\27LJ\2\n[\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0<source ~/.config/nvim/rc/pluginconfig/200-lightline.vim\bcmd\bvim\0", "config", "lightline.vim")
time([[Config for lightline.vim]], false)
-- Config for: caw.vim
time([[Config for caw.vim]], true)
require("pluginconfig.caw").config()
time([[Config for caw.vim]], false)
-- Config for: denops-signature_help
time([[Config for denops-signature_help]], true)
require("pluginconfig.denops-signature_help").config()
time([[Config for denops-signature_help]], false)
-- Conditional loads
time([[Conditional loading of deol.nvim]], true)
  require("packer.load")({"deol.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of deol.nvim]], false)
time([[Conditional loading of telescope.nvim]], true)
  require("packer.load")({"telescope.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope.nvim]], false)
time([[Conditional loading of vim-lsp]], true)
  require("packer.load")({"vim-lsp"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-lsp]], false)
time([[Conditional loading of vim-lsp-settings]], true)
  require("packer.load")({"vim-lsp-settings"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-lsp-settings]], false)
time([[Conditional loading of wilder.nvim]], true)
  require("packer.load")({"wilder.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of wilder.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'lexima.vim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /Users/miyake.isana/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
