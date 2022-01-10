local packer = require('packer')

packer.init({
    git = {
        clone_timeout = false, -- Timeout, in seconds, for git clones
    },
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
})

local use = packer.use

-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- colorscheme
use 'sainnhe/gruvbox-material'
use 'morhetz/gruvbox'

-- align stuff
use 'godlygeek/tabular'

-- quick comments
use 'scrooloose/nerdcommenter'

-- show indentation levels
use 'Yggdroot/indentLine'

-- fuzzy finder
use 'junegunn/fzf.vim'

-- supertab
use 'ervandew/supertab'

-- pretty icons
use {
    'kyazdani42/nvim-web-devicons',
    config = function() require('plugin/_nvim-web-devicons') end
}

-- status line
--use  {
    --'nvim-lualine/lualine.nvim',
    --config = function() require('plugin/_lualine') end
--}

use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'


-- file manager
use  {
    'kyazdani42/nvim-tree.lua',
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen' },
    config = function() require('plugin/_nvim-tree') end
}

-- auto pairs
use {
    'windwp/nvim-autopairs',
    config = function() require('plugin/_nvim-autopairs') end
}

-- tags
use  {
    'majutsushi/tagbar',
    cmd= { "Tagbar", "TagbarToggle"}
}


-- git in vim
use {
    'tpope/vim-fugitive',
    cmd= { "G", "Git"}
}

-- git signs
use {
    'lewis6991/gitsigns.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('plugin/_gitsigns')
    end
}

-- diff view
use {
    'sindrets/diffview.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('diffview').setup()
    end
}

-- project
use {
    "ahmedkhalf/project.nvim",
    config = function()
        require('plugin/_project')
    end
}

-- language support
use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require('plugin/_nvim-treesitter')
    end
}

use {
    "neovim/nvim-lspconfig",
    config = function()
        require('plugin/_nvim-lspconfig')
    end
}

use {
    "tamago324/nlsp-settings.nvim",
    config = function()
        require('plugin/_nlsp-settings')
    end
}

-- completion
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'

use {
    'SirVer/ultisnips',
    requires = {{'honza/vim-snippets', rtp = '.'}},
    config = function()
      vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
      vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
      vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
      vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
      vim.g.UltiSnipsRemoveSelectModeMappings = 0
    end
}

use {
    'quangnguyen30192/cmp-nvim-ultisnips',
    config=  function()
        require("cmp_nvim_ultisnips").setup {
            filetype_source = "treesitter",
            show_snippets = "all",
            documentation = function(snippet)
                return snippet.description
            end
        }
    end
}

use {
    "hrsh7th/nvim-cmp",
    config = function()
        require('plugin/_nvim-cmp')
    end,
}

--use {
    --'ms-jpq/coq_nvim',
    --branch= 'coq',
    --config= function()
        --require('plugin/_coq_nvim')
    --end
--}

--use {
    --'ms-jpq/coq.artifacts',
    --branch = 'artifacts'
--}

--use {
    --'ms-jpq/coq.thirdparty',
    --branch = '3p',
--}

use {
    "williamboman/nvim-lsp-installer",
    config = function()
        require('plugin/__nvim-lsp-installer')
    end
}

-- dashboard
--use {
    --'glepnir/dashboard-nvim',
    --config = function()
        --require('plugin/_dashboard-nvim')
    --end
--}

