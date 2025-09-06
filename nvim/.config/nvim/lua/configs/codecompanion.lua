require("codecompanion").setup({
    strategies = {
        chat = {
            adapter = "gemini",
            model = ""
        },
        inline = {
            adapter = "gemini",
        },
        cmd = {
            adapter = "gemini",
        }
    },
    adapters = {
        gemini = function()
            return require("codecompanion.adapters").extend("gemini", {
                env = {
                    api_key = 'cmd: gpg --batch --quiet --decrypt /home/augustine/.keys/gemini.gpg',
                },
            })
        end,
    },
})
