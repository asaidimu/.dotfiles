-- Define function to strip trailing whitespace
local function strip_trailing_whitespace()
  -- Don't strip on these filetypes
  if vim.bo.filetype == 'markdown' then
    return
  end

  -- Substitute trailing whitespace
  vim.cmd('%s/\\s\\+$//e')
end

-- Set up autocmd to call the strip_trailing_whitespace function before saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = strip_trailing_whitespace,
})

-- Define function to delete the current buffer
local function delete_current_buffer()
  local buf = vim.api.nvim_get_current_buf()

  -- If there is only one window and one buffer, closing the buffer should close the window.
  if #vim.fn.getbufinfo({buflisted = 1}) == 1 then
    vim.cmd('bdelete ' .. buf)
    vim.cmd('quit')
  else
    vim.cmd('bdelete ' .. buf)
  end
end

-- Create a command to close the current buffer
vim.api.nvim_create_user_command('CloseBuffer', delete_current_buffer, {})
