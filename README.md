The repository is for configuring NeoVim purely in Lua.

To auto format on save, it is required to install the supported format. For example, to auto format a python file, you need install the autopep8, such as "brew install autopep8", or "pip3 install autopep8". Install clang-format by "brew install clang-format" on Mac.
To install ccls and clangd, you need type: LSPInstall ccls or LSP Install clangd in the vim. You may also need to install llvm by "brew install llvm" on Mac.
To check if the package is installed, you can type ":echo exectuable("autopep8")", 0 means failure, and 1 means success.
