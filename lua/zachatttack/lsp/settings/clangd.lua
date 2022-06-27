local util = require 'lspconfig.util'

return {
  cmd = {
    "clangd",
    '--query-driver=/usr/bin/arm-none-eabi-gcc',
    -- '--query-driver=/home/zach/.espressif/tools/xtensa-esp32-elf/esp-2021r2-patch3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc',
  },
  filetypes = {"c", "cpp"},
  single_file_support = "true"
}
