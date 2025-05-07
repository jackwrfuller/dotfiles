local is_ok, jdtls = pcall(require, "jdtls")
if not is_ok then
	return
end

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

local config = {
  cmd = { "jdtls" },

  root_dir = require("jdtls.setup").find_root({
    ".git",
    "src",
    ".project",
  }),

  workspace_folder = workspace_dir,

  settings = {
    java = {
      project = {
        referencedLibraries = {
          -- Point to your manually downloaded .jar libraries if needed
          "lib/**/*.jar",
          "bin/"
        }
      }
    }
  },

  init_options = {
    bundles = {},
  },
}

jdtls.start_or_attach(config)

