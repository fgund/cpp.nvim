require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle breakpoint at line" } )
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Continue runnig" } )
map("n", "<leader>di", "<cmd> DapStepInto <CR>", { desc = "Step Into" } )
map("n", "<leader>do", "<cmd> DapStepOut <CR>", { desc = "Step Out" } )
map("n", "<leader>dd", "<cmd> DapStepOver <CR>", { desc = "Step Over" } )

-- CMake
map("n", "<leader>cr", "<cmd> CMakeRun <CR>", { desc = "CMake Run" } )
