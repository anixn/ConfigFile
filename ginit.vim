" NVim setting
if exists(':Guifont')
    " GuiFont! FiraCode\ NF:h12
    GuiFont! Cousine\ NF:h12
    GuiPopupmenu 0
    GuiTabline 0
endif

" Fvim setting
if exists('g:fvim_loaded')
    set guifont='Fira\ Code':h16
    " set guifont='Cousine\ NF':h16

    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :FVimToggleFullScreen<CR>

    FVimCursorSmoothMove v:true
    FVimCursorSmoothBlink v:true
    FVimBackgroundOpacity 0.85
    FVimBackgroundAltOpacity 1.00
    FVimUIPopupMenu v:false
    FVimFontAntialias v:true
    FVimFontAutohint v:true
    FVimFontLigature v:true
    " FVimFontHintLevel 'full'
    " FVimFontSubpixel v:true
    " FVimCustomTitleBar v:false
    " FVimFontAutoSnap v:true
    " Something
endif

