return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {--[[ things you want to change go here]]
    },
    config = function()
      require('toggleterm').setup {
        -- size can be a number or function which is passed the current terminal
        size = 15 or function(term)
          if term.direction == 'horizontal' then
            return 15
          elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<A-t>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
      }
    end,
  },
}
