set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "pallor"

" srgb converted to xterm colors using the CIEDE2000
" implementation in github.com/pazdera/tco
let s:colors = {
	\'bg': ['#383838', '237'],
	\'linehl': ['#282828', '235'],
	\'selection': ['#535353', '239'],
	\'fg': ['#d8d8d8', '188'],
	\'comment': ['#808080', '244'],
	\'red': ['#c87878', '174'],
	\'blue': ['#88d8d8', '116'],
	\'orange': ['ffb870', '215'],
	\'green': ['90d090', '114'],
	\'yellow': ['ffff88', '228'],
	\'inval': ['ff00ff', '201'],
\}

function! s:h(group, fg, bg)
	exec 'highlight '.a:group.' gui=NONE cterm=NONE ctermfg=NONE ctermbg=NONE'
	if a:fg == ''
		exec 'highlight '.a:group.' guifg=NONE ctermfg=NONE'
	else
		exec 'highlight '.a:group.' guifg='.s:colors[a:fg][0].' ctermfg='.s:colors[a:fg][1]
	endif
	if a:bg == ''
		exec 'highlight '.a:group.' guibg=NONE ctermbg=NONE'
	else
		exec 'highlight '.a:group.' guibg='.s:colors[a:bg][0].' ctermbg='.s:colors[a:bg][1]
	endif
endfun

call s:h('Normal', 'fg', 'bg')
call s:h('Comment', 'comment', '')
call s:h('shQuote', 'comment', '')

" delimiters and such
call s:h('vimParenSep', '', '')
call s:h('vimSep', '', '')
call s:h('vimContinue', '', '')

" things that should not be highlighted
call s:h('vimVar', '', '')
call s:h('vimFuncVar', '', '')
call s:h('vimOption', '', '')
call s:h('shRepeat', '', '')
call s:h('shOption', '', '')
call s:h('shSnglCase', '', '')
call s:h('shStatement', '', '')
call s:h('shShellVariables', '', '')
call s:h('shCmdSubRegion', '', '')
call s:h('shOperator', '', '')
call s:h('shCommandSub', '', '')
call s:h('shSetList', '', '')

" git commit highlighting matches my git color settings
call s:h('gitCommitSummary', '', '')
highlight link gitCommitSelected Comment
highlight link gitCommitDiscarded Comment
highlight link gitCommitUntracked Comment
highlight link gitCommitHeader Comment
call s:h('gitCommitFile', '', '')
call s:h('gitCommitType', '', '')
call s:h('gitCommitBranch', 'yellow', '')
call s:h('gitCommitSelectedFile', 'green', '')
call s:h('gitCommitDiscardedFile', 'red', '')
call s:h('gitCommitUntrackedFile', 'orange', '')

" things we don't know how to highlight yet
call s:h('PreProc', 'inval', '')
call s:h('Special', 'inval', '')
call s:h('Repeat', 'inval', '')
call s:h('Statement', 'inval', '')
call s:h('Identifier', 'inval', '')

" strings - red
call s:h('String', 'red', '')
call s:h('Character', 'red', '')
call s:h('Label', 'red', '')

" keywords - blue
call s:h('Keyword', 'blue', '')
call s:h('Conditional', 'blue', '')
call s:h('Label', 'blue', '')
call s:h('shSet', 'blue', '')
call s:h('shLoop', 'blue', '')
call s:h('xmlDocTypeKeyword', 'blue', '')

" constants - orange
call s:h('Constant', 'orange', '')
call s:h('Boolean', 'orange', '')
call s:h('Float', 'orange', '')
call s:h('Number', 'orange', '')
call s:h('cSpecial', 'orange', '')

" types - yellow
call s:h('Type', 'yellow', '')
call s:h('StorageClass', 'yellow', '')

" functions - green
call s:h('Function', 'green', '')
" xmlTag is grouped under function, but xmlEndTag is not
call s:h('xmlEndTag', 'green', '')

" diffs
call s:h('DiffAdd', 'green', '')
call s:h('DiffAdded', 'green', '')
call s:h('DiffDel', 'red', '')
call s:h('DiffRemoved', 'red', '')
call s:h('DiffText', 'blue', '')
call s:h('DiffSubname', 'comment', '')
call s:h('DiffLine', 'yellow', '')
call s:h('DiffFile', 'yellow', '')

" TODO comments
call s:h('Todo', '', '')

" ui elements
call s:h('LineNr', 'comment' ,'linehl') " the line number gutter
call s:h('CursorLine', '', 'linehl') " the visual line that the cursor is on
call s:h('CursorLineNr', '', 'linehl') " the gutter line correponding to CursorLine
