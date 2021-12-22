return require('packer').startup(function(use)
-- package manager
    use 'wbthomason/packer.nvim' use 'vim-airline/vim-airline'
-- git integration
    use 'tpope/vim-fugitive'
-- nerdtree
    use 'scrooloose/nerdtree'
-- c++ debug
    use 'puremourning/vimspector'
    use 'yggdroot/indentline'
-- airline extension
    use 'lambdalisue/battery.vim'
-- hgihtlight todo comments
    use 'folke/todo-comments.nvim'
-- colorschemes
    use 'sainnhe/gruvbox-material'
    use 'sainnhe/everforest'
    use 'arcticicestudio/nord-vim'
    use 'folke/lsp-colors.nvim'
--  LSP related things
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
-- snippet
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'
-- hightlighting
    use 'RRethy/vim-illuminate'
    use 'jackguo380/vim-lsp-cxx-highlight'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
-- auto pairs
    use 'jiangmiao/auto-pairs'
-- startup screeen
use 'mhinz/vim-startify'
-- tabline
use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
}
-- support library
    use 'nvim-lua/plenary.nvim'
end)
