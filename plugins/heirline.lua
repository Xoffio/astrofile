return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      opts.statusline = {
        -- statusline
        hl = { fg = "fg", bg = "bg" },

        -- add the vim mode component
        status.component.mode {
          mode_text = {
            icon = {
              kind = "Bug",
              padding = { left = 1, right = 1 },
            },
          },
          -- surround the component with a separators
          surround = {
            -- it's a left element, so use the left separator
            separator = "left",
            -- set the color of the surrounding based on the current mode using astronvim.utils.status module
            color = function() return { main = status.hl.mode_bg(), right = "blank_bg" } end,
          },
        },

        -- we want an empty space here so we can use the component builder to make a new section with just an empty string
        status.component.builder {
          { provider = "" },
          -- define the surrounding separator and colors to be used inside of the component
          -- and the color to the right of the separated out section
          surround = { separator = "left", color = { main = "blank_bg", right = "file_info_bg" } },
        },
        -- add a section for the currently opened file information
        -- status.component.file_info {
        --   -- enable the file_icon and disable the highlighting based on filetype
        --   file_icon = { padding = { left = 0 } },
        --   filename = { fallback = "Empty" },
        --   -- add padding
        --   padding = { right = 1 },
        --   -- define the section separator
        --   surround = { separator = "left", condition = false },
        -- },
        -- add a component for the current git branch if it exists and use no separator for the sections
        status.component.git_branch {
          surround = {
            -- separator = "left",
            color = { main = "file_info_bg", right = "file_info_bg" },
            condition = false,
          },
        },
        status.component.file_info { filetype = {}, filename = false, file_modified = false },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp(),
        status.component.treesitter(),
        status.component.nav(),
        -- remove the 2nd mode indicator on the right
      }

      -- return the final configuration table
      return opts
    end,
  },
}
