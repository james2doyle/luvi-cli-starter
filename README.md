luvi-cli-starter
================

A starting point for making Luvi command line apps

## Workflow

Luvi has a somewhat unique, but very easy workflow for creating self-contained
binaries on systems that don't have a compiler.

```sh
# Make a folder
git init myapp
# Write the app
vim myapp/main.lua
# Run the app
luvi myapp
# Build the binary when done
luvi myapp -o mybinary
# Run the new self-contained binary
./mybinary
# Deploy / Publish / Profit!
```
