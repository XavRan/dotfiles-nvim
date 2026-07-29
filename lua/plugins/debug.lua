-- Debug adapter (DAP)
return {
  "mfussenegger/nvim-dap",
  keys = {
    { "<F5>", function() require("dap").continue() end, desc = "Debug: Start/Continue" },
    { "<F1>", function() require("dap").step_into() end, desc = "Debug: Step Into" },
    { "<F2>", function() require("dap").step_over() end, desc = "Debug: Step Over" },
    { "<F3>", function() require("dap").step_out() end, desc = "Debug: Step Out" },
    { "<leader>d", function() require("dap").toggle_breakpoint() end, desc = "[D]ebug: Toggle Breakpoint" },
    { "<leader>D", function()
      require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end, desc = "Debug: Conditional Breakpoint" },
  },
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "jay-babu/mason-nvim-dap.nvim",
    "nvim-neotest/nvim-nio",
    "leoluz/nvim-dap-go",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("mason-nvim-dap").setup({
      automatic_setup = true,
      handlers = {},
      ensure_installed = { "delve" },
    })

    dap.adapters.gdb = { type = "executable", command = "gdb", args = { "-i", "dap" } }
    dap.configurations.c = {
      {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
      },
    }

    dapui.setup({
      icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
    })

    vim.keymap.set("n", "<F7>", dapui.toggle, { desc = "Debug: Toggle UI" })

    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close

    require("dap-go").setup()
  end,
}
