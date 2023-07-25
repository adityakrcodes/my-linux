local ranger_nvim = require("ranger-nvim")
ranger_nvim.setup({
  enable_cmds = false,
  replace_netrw = false,
  keybinds = {
    ["ov"] = ranger_nvim.OPEN_MODE.vsplit,
    ["oh"] = ranger_nvim.OPEN_MODE.split,
    ["ot"] = ranger_nvim.OPEN_MODE.tabedit,
    ["or"] = ranger_nvim.OPEN_MODE.rifle,
  },
})
vim.keymap.set("n", "<leader>e", "", {
    noremap = true,
    callback = function ()
        require("ranger-nvim").open(true)
    end
})
