-- IMPORTANT: Packer needs to generate a file called 'packer_compiled.lua'
-- right in the .config directory, which breaks when mounting / sharing the
-- .config.
-- In order to avoid that, we add  ~/.cache/nvim to the runtime path, and
-- tell Packer to put the 'packer_compile.lua' there, where it will be autolloaded
-- by neovim.
local home = os.getenv 'HOME'
local cache = home .. '/.cache/nvim'
vim.opt.runtimepath:prepend(cache)
local packer = require 'packer'
packer.init {
  -- no longer in config, part of runtime: this makes the config portable
  compile_path = cache .. '/plugin/packer_compiled.lua',
}

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'folke/tokyonight.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({ ignore = '^$' })
    end
  }
  use({
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
        -- vim events that trigger auto-save. See :h events
        trigger_events = { "InsertLeave", "TextChanged" },
      }
    end,
  })

  use 'karb94/neoscroll.nvim'

end)
