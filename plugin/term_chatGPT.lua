local workdir = os.getenv("PWD") or io.popen("cd"):read()

vim.api.nvim_create_user_command("ChatGPT", function()
    local api = vim.api
    local cmd = api.nvim_command
    vim.g.floaterm_width = 0.9
    vim.g.floaterm_height = 0.9
    cmd("FloatermNew --autoclose=1 --title=ChatGpt --position=center --wintype=float " .. workdir .. "/bin/chatGPT")
end, {})

vim.api.nvim_create_user_command("ChatGPTInstall", function()
	os.execute(string.format("%s/install.sh", workdir))
end,{})
