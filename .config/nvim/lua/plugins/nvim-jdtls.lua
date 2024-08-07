return {
	{
		"mfussenegger/nvim-jdtls",
		ft = { "java" },
		-- event = { "FileReadPre", "BufReadPre", "FilterReadPre" },
		config = function()
			local conf = {
				cmd = { "/usr/bin/jdtls" },
				root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
				settings = {
					["java.settings.url"] = "./configs/jdtls/settings.perf",
				},
			}
			require("jdtls").start_or_attach(conf)
		end,
	},
}
