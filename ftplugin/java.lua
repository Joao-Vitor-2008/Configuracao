local jdtls = require("jdtls")

local root_markers = { "pom.xml", "gradlew", "mvnw", ".git" }
local root_dir = require("jdtls.setup").find_root(root_markers)

local config = {
  cmd = { "jdtls" },
  root_dir = root_dir,
  init_options = {
    bundles = vim.fn.glob(
      vim.fn.stdpath("data")
        .. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar"
    ),
  },
}

jdtls.start_or_attach(config)
