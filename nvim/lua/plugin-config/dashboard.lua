local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.custom_footer = function()
  local footer = {'', '🎉 Have fun with neovim'}
  if packer_plugins ~= nil then
      local count = #vim.tbl_keys(packer_plugins)
      footer[2] = '🎉 neovim loaded ' .. count .. ' plugins'
      for key, value in pairs(packer_plugins) do
          table.insert(footer, '✨  ' .. key)
      end
  end

  print(footer)
  return footer
end

db.custom_center = {
  {
    icon = "  ",
    desc = "文件管理器                           ",
    action = "RnvimrToggle",
  },
  {
    icon = "  ",
    desc = "项目                                ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "最近的文件                           ",
    action = "Telescope oldfiles",
  },
  {
    icon = "  ",
    desc = "编辑快捷键                           ",
    action = "edit ~/.config/nvim/lua/keybindings.lua",
  },
  {
    icon = "  ",
    desc = "编辑历史项目                         ",
    action = "edit ~/.local/share/nvim/project_nvim/project_history",
  },
  -- {
  --   icon = "  ",
  --   desc = "Edit .bashrc                        ",
  --   action = "edit ~/.bashrc",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Change colorscheme                  ",
  --   action = "ChangeColorScheme",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Edit init.lua                       ",
  --   action = "edit ~/.config/nvim/init.lua",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find file                           ",
  --   action = "Telescope find_files",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find text                           ",
  --   action = "Telescopecope live_grep",
  -- },
}

db.custom_header = {
  [[]],
  [[          ▀████▀▄▄              ▄█ ]],
  [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
  [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
  [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
  [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
  [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
  [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
  [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
  [[   █   █  █      ▄▄           ▄▀   ]],
}