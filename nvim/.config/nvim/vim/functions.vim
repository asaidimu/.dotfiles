" -- Folding Function ---
fun! AusomeFolds()
    let current_line=getline(v:lnum)
    let previous_line=getline(v:lnum-1)
    let next_line=getline(v:lnum+1)

    if match(current_line, '\v^\s*.*\s(-){2}\s.*\s(-){2}(\s.*)*$') >= 0
        return ">1"
    elseif match(current_line, '\v^\s*.*\s(-){2}\s.*\s(-){3}(\s.*)*$') >= 0
        return ">2"
    elseif strlen(current_line) == 0
        return "-1"
    else
        return "="
    endif
endf

" -- Strip Trailing Whitespace ---
fun! StripTrailingWhitespace()
    " don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()

" -- Create A Scratch buffer ---

fun! ScratchBuffer()
    :tab new
    :set buftype=nofile
    :set bufhidden=hide
    :setlocal noswapfile
endf
command! Scratch : call ScratchBuffer()

" -- Open File in New Tab if current is empty --
fun! OpenInTabIfBufferDirty(file)
    if line('$') == 1 && getline(1) == ''
        exec 'e' a:file
    else
        exec 'tabnew' a:file
    endif
  endfun
" nnoremap <silent> <leader>ev :call OpenInTabIfBufferDirty($MYVIMRC)<cr>
