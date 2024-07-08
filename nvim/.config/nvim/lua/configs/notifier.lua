vim.notify = require("notify")

vim.notify.setup({
  -- Animation style (see below for details)
  stages = "slide",

  -- Function called when a new window is opened, use for changing win settings/config
  on_open = nil,

  -- Function called when a window is closed
  on_close = nil,

  -- Render function for notifications. See notify-render()
  render = "default",

  -- Default timeout for notifications
  timeout = 2000,

  -- Max number of columns for messages
  max_width = nil,
  -- Max number of lines for a message
  max_height = nil,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
  background_colour = "Normal",

  -- Minimum width for notification windows
  minimum_width = 30,

  -- Icons for the different levels

  icons ={
      ERROR = " ",
      WARN = " ",
      HINT = " ",
      INFO = "כֿ ",
      DEBUG = "",
      TRACE = "✎",
  }

})

local notif_type = {
    "error",
	"warning",
	"info",
	"log",
}

local async = require("plenary.async")

local notifyLsp = function (_, result, _)
    async.run(function ()
        if not result.type then
            return
        end
        local severity = notif_type[result.type]

        vim.notify(result.message, severity)

    end)
end

vim.lsp.handlers["window/showMessage"] =  notifyLsp
