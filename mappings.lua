-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_pickef(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>j"] = { "<cmd>HopWord<cr>" },
    ["<S-e>"] = { "<C-e>" },
    ["<S-w>"] = { "<C-y>" },
    ["<leader>v"] = { "<CMD>vsplit<CR>" },
    ["<leader>r"] = { "<CMD>Telescope lsp_references<CR>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-s>"] = { "<ESC><CMD>update<CR>" },
    ["<A-j>"] = { "<Down>" },
    ["<A-k>"] = { "<Up>" },
    ["<A-h>"] = { "<Left>" },
    ["<A-l>"] = { "<Right>" },
    ["<A-a>"] = { "<Home>" },
    ["<A-e>"] = { "<End>" },
  },   
  v = {
    ["jk"] = { "<ESC>"},
    ["<S-j>"] = { "<down>" },
    ["<S-k>"] = { "<up>" },
    ["<S-h>"] = { "<left>" },
    ["<S-l>"] = { "<right>" },
    ["<S-a>"] = { "<home>" },
    ["<S-e>"] = { "<end>" },
  }
}
