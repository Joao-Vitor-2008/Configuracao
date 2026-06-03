return {
  {
    "mfussenegger/nvim-dap",
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio", -- 🔥 isso que faltava
    },
    config = function()
      require("dapui").setup()
    end,
  },
}
