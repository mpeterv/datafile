package = "datafile"
version = "scm-1"

source = {
   url = "git://github.com/hishamhm/datafile.git",
   tag = "v0.2",
}

description = {
   summary = "A library for handling paths when loading data files",
   detailed = [[
      datafile is a library for avoiding hardcoded paths
      when loading resource files in Lua modules.
   ]],
   homepage = "http://github.com/hishamhm/datafile",
   license = "MIT/X11",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["datafile"] = "datafile.lua",
      ["datafile.util"] = "datafile/util.lua",
      ["datafile.openers.luarocks"] = "datafile/openers/luarocks.lua",
      ["datafile.openers.caller"] = "datafile/openers/caller.lua",
   },
   platforms = {
      unix = {
         modules = {
            ["datafile.openers.xdg"] = "datafile/openers/xdg.lua",
            ["datafile.openers.unix"] = "datafile/openers/unix.lua",
         }
      },
      windows = {
         modules = {
            ["datafile.openers.windows"] = "datafile/openers/windows.lua",
         }
      },
   }
}
