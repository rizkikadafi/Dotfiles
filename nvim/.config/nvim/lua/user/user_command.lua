vim.api.nvim_create_user_command('CMake', '!cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1', {})
vim.api.nvim_create_user_command('CMakeBuild', '!cmake --build build', {})
vim.api.nvim_create_user_command('CMakeRun', '!./build/main', {})
