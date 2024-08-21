return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.black, --Formatting for python
        null_ls.builtins.formatting.isort, --Formatting for python
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.actionlint, --Git diagnostics/linter

        ----Other Linters I have installed through Mason GUI(don't really need to add them again here)
        --- checkstyle -- Java diagnostics/linter
        --- cpplint -- C/C++ diagnostics/linter
        --- eslint_d -- Javascript/Typescript diagnostics/linter
        --- golangci-lint -- Go diagnostics/linter
        --- shellcheck -- Shell script diagnostics/linter

			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
