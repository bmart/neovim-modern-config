return
{
  'tpope/vim-rails',
  config = function()
    vim.keymap.set("n", "<Leader>m", ":Emodel", { silent = true })
  end
}
