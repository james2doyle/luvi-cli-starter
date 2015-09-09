luvi-cli-starter
================

A starting point for making Luvi command line apps

### Getting Started

This repo was created by modifying the [Lit Luvi app](https://github.com/luvit/lit) to be a basic boilerplate for running single lua files as commands.

### Creating Commands

All the commands go into the `commands` directory and get accessed as an argument to your app. As an example, I can run `commands/main.lua` by running `luvi . -- main` in the root folder of the project.

When I have built my binary, I can use `mybinary main` to run the main command.

Be sure to update `commands/README` with your help details. This help command gets triggered with the `help` argument, or when a command *is not found*.

You can install dependencies with [Lit](https://luvit.io/lit.html), or add them to your `package.lua` file and run `lit install`.

### Building and Deploying

Before you build your app, you need to make sure you edit your `commands/README` and fill it in with you app name, the commands that exist, as well as some helpful info about each one.

You should also update the `package.lua` with your app details. More specifically, the `version` since this is read when using the `version` argument.

---

Luvi has a somewhat unique, but very easy workflow for creating self-contained binaries on systems that don't have a compiler.

```sh
# Clone project
git clone git@github.com:james2doyle/luvi-cli-starter.git && cd luvi-cli-starter
# Write the app
vim commands/main.lua
# Run the app
luvi .
# Run the app with arguments
luvi . -- main
# Build the binary when done
luvi . -o mybinary
# Run the new self-contained binary
./mybinary
# Deploy / Publish / Profit!
```

