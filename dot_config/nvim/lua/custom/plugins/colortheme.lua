return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('tokyonight').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
      transparent = false,
    }

    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'tokyonight'
    -- Toggle background transparency
    local bg_transparent = true
    local toggleSchemes = { 'tokyonight-night', 'tokyonight' }

    --hello
    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      local i = bg_transparent and 2 or 1
      print 'colorscheme changed'
      vim.cmd('colorscheme ' .. toggleSchemes[i])
      print('current scheme ' .. toggleSchemes[i])
    end

    vim.keymap.set('n', '<leader>b', toggle_transparency, { desc = 'toggle transparency', noremap = true, silent = true })
  end,
}
