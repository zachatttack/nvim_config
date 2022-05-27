local util = require 'lspconfig.util'

return {
  root_dir = util.root_pattern('compile_commands.json', '.ccls'),

  filetypes = {
    "c", 
    "cpp", 
    "objc", 
    "objcpp" 
  }
}
