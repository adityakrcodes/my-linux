local runner = require("code_runner")

runner.setup({
	mode = "toggleterm",
	term = {
		size = 30,
	},
	filetype = {
		javascript = "node",
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
		cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
		python = "python -u",
		sh = "bash",
	},
})
