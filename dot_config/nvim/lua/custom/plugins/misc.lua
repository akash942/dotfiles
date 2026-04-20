return {
  {
    'windwp/nvim-autopairs', -- adds pair of braces automatially also indents it i think
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    'norcalli/nvim-colorizer.lua', -- colors hex codes example: #7F00FF
    config = function()
      require('colorizer').setup()
    end,
  },

  -- autotag
  {
    'windwp/nvim-ts-autotag',
    --    ft = { 'html', 'jsx', 'tsx' },
    --    lazy = true,
    event = 'BufReadPre',
    config = function()
      require('nvim-ts-autotag').setup {
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = true, -- Auto close on trailing </
        },
        -- Also override individual filetype configs, these take priority.
        -- Empty by default, useful if one of the "opts" global settings
        -- doesn't work well in a specific filetype
        --        per_filetype = {
        --          ['html'] = {
        --            enable_close = true,
        --          },
        --        },
      }
    end,
  },
}
