return {
  name = "james2doyle/luvi-cli-starter",
  version = "1.0.0",
  homepage = "https://github.com/james2doyle/luvi-cli-starter",
  description = "A starting point for making Luvi command line apps.",
  tags = {"luvi", "command", "starter", "helper", "boilerplate"},
  license = "MIT",
  author = { name = "James Doyle", email = "james2doyle@gmail.com" },
  luvi = {
    version = "2.3.3",
    flavor = "regular",
  },
  dependencies = {
    "luvit/require@1.2.2",
    "creationix/coro-channel@1.2.0",
    "creationix/coro-spawn@0.2.1",
    "creationix/coro-split@0.1.1",
    "luvit/pretty-print@1.0.3",
    "creationix/prompt@1.0.3",
  },
  files = {
    "commands/README",
    "**.lua",
    "!test*"
  }
}
