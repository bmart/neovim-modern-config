return {
  'mileszs/ack.vim',
  config = function()
    vim.g.ackprg = 'rg --vimgrep --type-not sql --smart-case'
    -- Auto close the Quickfix list after pressing '<enter>' on a list item
    vim.g.ack_autoclose = 1

    -- " Any empty ack search will search for the work the cursor is on
    vim.g.ack_use_cword_for_empty_search = 1

    -- cnoreabbrev Ack Ack!
    -- Maps <leader>/ so we're ready to type the search keyword
    -- nnoremap <Leader>/ :Ack!<Space>
    vim.keymap.set('n', '<leader>/', ':Ack!<space>')

  end
}
