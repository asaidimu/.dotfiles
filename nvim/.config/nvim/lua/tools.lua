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
  vim.cmd('bdelete ' .. buf)

  -- Check if the buffer was the only one and if it's empty
  if vim.api.nvim_buf_is_valid(buf) then
    local buf_name = vim.api.nvim_buf_get_name(buf)
    if buf_name == '' and vim.api.nvim_buf_line_count(buf) == 1 and vim.api.nvim_buf_get_lines(buf, 0, 1, false)[1] == '' then
      vim.cmd('quit')
    end
  end
end

-- Create a command to close the current buffer
vim.api.nvim_create_user_command('CloseBuffer', delete_current_buffer, {})
