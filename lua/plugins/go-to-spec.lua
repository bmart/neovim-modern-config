return {
  dir = "~/Development/go-to-spec.nvim",
  config = function()
    local specHelper = require("go-to-spec")

    vim.keymap.set("n", "<Leader>r", specHelper.goToSpec)
    vim.keymap.set("n", "<Leader>rs", specHelper.goToSpecSplit)
    vim.keymap.set("n", "<Leader>rt", specHelper.opsTest)
  end
}
