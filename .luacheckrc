--- @diagnostic disable: undefined-global

-- Files and directories to check
include_files = {
  "**/*.lua",
  ".luacheckrc",
}

files["**/*.lua"] = {
  std = "lua52",
  globals = {
    "commands",
    "data",
    "defines",
    "feature_flags",
    "game",
    "helpers",
    "log",
    "mods",
    "prototypes",
    "rcon",
    "rendering",
    "remote",
    "script",
    "serpent",
    "settings",
    "storage",
    "util",
  },
}

-- Code quality settings
max_line_length = false
