return {
    "rcarriga/nvim-notify",
    opts = {},
    config = function(_, opts)
        local notify = require("notify")
        notify.setup(opts)
        vim.notify=notify

        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
        vim.keymap.set("n", "<leader>d", function()
          notify.dismiss({ silent = true, pending = true })
        end, { desc = "Dismiss notifications" })
    end

}
