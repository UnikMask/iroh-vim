" vim:ft=vim foldmethod=marker
" === Ethna Colorscheme ===
" By UnikMask <visorunik@gmail.com>
" https://github.com/damien-vim
" Last Modified: recently
" === === === === === === ===


" Init spc settings: {{{"

let g:colors_name='damien'
" Check if user doesn't want to use special character formats
if !exists('g:damien_use_spc')
	let g:damien_use_spc=1
else
	let g:damien_use_spc=0
endif

" }}}
" Palette: {{{

" Set palette dictionnary
let s:dm = {}

" Fill dictionnary with colors
let s:dm.bg 	=  ['#2e2b2a', 237]
let s:dm.fg 	=  ['#e9d49c', 230]
let s:dm.dcurs  =  ['#e9d49c', 230]

" Colors
let s:dm.dam2  =  ['#899470', 130]
let s:dm.dam10 =  ['#9eb185', 130]
let s:dm.dam13 =  ['#e3630a', 202]
let s:dm.dam5  =  ['#ff771d', 202]
let s:dm.dam6  =  ['#d38007', 208]
let s:dm.dam14 =  ['#faac09', 208]
let s:dm.dam18 =  ['#ffb032', 208]
let s:dm.dam0  =  ['#c22211', 232]
let s:dm.dam3  =  ['#ca2c18', 95]
let s:dm.dam11 =  ['#d33b24', 166]
let s:dm.dam17 =  ['#999999', 235]
let s:dm.dam7  =  ['#d6caab', 230]
let s:dm.dam15 =  ['#f6efdd', 230]
let s:dm.dam1  =  ['#403735', 242]
let s:dm.dam9  =  ['#7d5650', 131]
let s:dm.dam16 =  ['#8f5e51', 131]
let s:dm.dam8  =  ['#c2604c', 179]
let s:dm.dam4  =  ['#627400', 100]
let s:dm.dam12 =  ['#90c523', 179]

" }}}
" Set-Up: {{{

" Assign all elements their attribute colors.

" Background and foreground colors
let s:bg = s:dm.bg
let s:fg = s:dm.fg

" Shades of orange-yellow -- fiery gold
let s:fire0 = s:dm.dam13
let s:fire1 = s:dm.dam5
let s:fire2 = s:dm.dam6
let s:fire3 = s:dm.dam14
let s:fire4 = s:dm.dam18

" Shades of decrepit green - roots
let s:roo0 = s:dm.dam2
let s:roo1 = s:dm.dam10

" Shades of red -- bright wine
let s:wine0 = s:dm.dam0
let s:wine1 = s:dm.dam3
let s:wine2 = s:dm.dam11

" Shades of beige - bone
let s:bone0 = s:dm.dam7
let s:bone1 = s:dm.dam15

" Shades of grey - metal
let s:metl0 = s:dm.dam17

" Shades of red-grey - dust
let s:dust0 = s:dm.dam1
let s:dust1 = s:dm.dam9
let s:dust2 = s:dm.dam16
let s:dust3 = s:dm.dam8

" Shades of green - Witch fire
let s:wtch0 = s:dm.dam4
let s:wtch1 = s:dm.dam12

" Represent null color
let s:none = ['NONE', 'NONE']

" }}}
" Emphasis Set: {{{

let s:bold = 'bold,'
let s:italic = 'italic,'
let s:underline = 'underline,'
let s:undercurl = 'undercurl,'
let s:inverse = 'inverse,'

" }}}
" Function for highlight: {{{

" Function based on morhetz/gruvbox implementation of highlighting
" Arguments - group, fg, bg, emphasis
function! s:Highlight(group, fg, ...)
	" Assign foreground
	let fg = a:fg

	" If more than 1 extra arg, set extra as background.
	if a:0 >=1
		let bg = a:1
	else
		let bg = s:none
	endif

	" Debugging
	if bg[1] =~ 'n'
		echomsg a:group
	endif

	" Add emphasis to the highlight for extra possibilities like inverse
	if a:0 >= 2 && strlen(a:2)
		let emstr = a:2
	else
		let emstr = 'NONE,'
	endif

	" Do highlight string 
	let hlstr = ['hi', a:group,
			\ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
			\ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
			\ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
			\ ]

	execute join(hlstr, ' ')
endfunction
" }}}
" Damien Common Highlights: {{{

call s:Highlight('DamienFg', s:fg)
call s:Highlight('DamienBg', s:none, s:bg)

" Wine hues
call s:Highlight('DamienWine0', s:wine0)
call s:Highlight('DamienWine1', s:wine1)
call s:Highlight('DamienWine2', s:wine2)

" Dust hues
call s:Highlight('DamienDust0', s:dust0)
call s:Highlight('DamienDust1', s:dust1)
call s:Highlight('DamienDust2', s:dust2)
call s:Highlight('DamienDust3', s:dust3)

" Witch fire hues
call s:Highlight('DamienWitch0', s:wtch0)
call s:Highlight('DamienWitch1', s:wtch1)

" Bone hues
call s:Highlight('DamienBone0', s:bone0)
call s:Highlight('DamienBone1', s:bone1)

" Fiery golden hues
call s:Highlight('DamienFire0', s:fire0)
call s:Highlight('DamienFire1', s:fire1)
call s:Highlight('DamienGold0', s:fire2)
call s:Highlight('DamienGold1', s:fire3)
call s:Highlight('DamienGold2', s:fire4)

" Rootsing hues
call s:Highlight('DamienRoots0', s:roo0)
call s:Highlight('DamienRoots1', s:roo1)

" Metal hues
call s:Highlight('DamienMetal0', s:metl0)

" Alert boxes
call s:Highlight('DamienErrBox', s:wine1, s:dust0, s:bold)
call s:Highlight('DamienWarnBox', s:fire3, s:dust1, s:bold)
call s:Highlight('DamienAlertBox', s:bg, s:dust2, s:bold)
call s:Highlight('DamienDeathBox', s:wine2, s:wine0, s:bold)
call s:Highlight('DamienSuccessBox', s:wtch1, s:bg, s:bold)

" Normal highlight
call s:Highlight('Normal', s:fg, s:bg)

" }}}

" === Vanilla colors (default, no plugin, no lang) ===
" General: {{{

" Make sure background is set to dark
set background=dark

" Set cursor line and cursor column with defaults
call s:Highlight('CursorLine', s:bg, s:dust0)
hi! link CursorColumn CursorLine

" Tab page line filler, label, and inactive label
call s:Highlight('TabLineFill', s:bone0, s:dust0)
call s:Highlight('TabLineSel', s:wtch1, s:dust0)
hi! link TabLine TabLineFill

" Highlight cursor paired bracket : try here {}
call s:Highlight('MatchParen', s:none, s:dust1, s:bold)

" Highlight screen columns if shown
call s:Highlight('ColorColumn', s:none, s:dust0)

" Highlight concealed elements
call s:Highlight('Conceal', s:dust2, s:bg)

" Line number of the cursor line
call s:Highlight('CursorLineNr', s:fire2, s:dust0)

" Link non-text and special key to more dust2's light redish grey color.
hi! link NonText DamienDust2
hi! link SpecialKey DamienDust2
" Visual mode highlighting
call s:Highlight('Visual', s:none, s:bg, s:inverse)
hi! link VisualNOS Visual

" Search highlights
call s:Highlight('Search', s:wtch1, s:bg, s:inverse)

call s:Highlight('IncSearch', s:bone1, s:bg, s:inverse)

" Underline highlight
call s:Highlight('Underlined', s:wtch0, s:bg, s:underline)

" Status line vars if not overriden
call s:Highlight('StatusLine', s:bone1, s:dust1, s:inverse)
hi! link StatusLineNC StatusLine

" Column separating windows
hi! link VertSplit DamienDust1

" Wild menu completion
call s:Highlight('WildMenu', s:fire0, s:dust1, s:bold)

" Directory & special names in listing
hi! link Directory DamienGold0

" Titles for output from certain commands (:set all)
hi! link Title DamienMetal0

" Err messages on command line
hi! link ErrorMsg DamienErrBox
" -- More -- prompt
hi! link MoreMsg DamienSuccessBox
" -- Press enter prompt
hi! link Question DamienAlertBox
" Warning messages
hi! link WarningMsg DamienWarnBox

" }}}
" Gutter / Sidebar: {{{ 
" Line number on the side with :number
hi! link LineNr DamienDust1

" Sign bar
call s:Highlight('SignColumn', s:none, s:dust0)

" Folds line
call s:Highlight('Folded', s:dust2, s:dust0, s:italic)
" Col where fold displayed
hi! link FoldColumn Folded

" }}}
" Cursor: {{{

" Character under cursor
call s:Highlight('Cursor', s:none, s:none, s:inverse)
" Link all cursors to base cursor
hi! link vCursor Cursor
hi! link iCursor Cursor
hi! link lCursor Cursor
" }}}
" Syntax Highlighting: {{{

" Special characters
call s:Highlight('Special', s:fire1, s:bg, s:italic)

" Comment, todos, errors
call s:Highlight('Comment', s:dust2, s:bg)
call s:Highlight('Todo', s:dust3, s:bg, s:bold)
call s:Highlight('Error', s:wine2, s:dust2, s:inverse)

" === === General statements an structure === ===
" Loops
hi! link Repeat DamienWine2
" Labels
hi! link Label DamienWine2
" Exceptions
hi! link Exception DamienWine2
" Keywords
hi! link Keyword DamienWine2
" Conditional Statements
hi! link Conditional DamienGold1
" Operators
hi! link Operator DamienWine2
" Statements
hi! link Statement DamienGold2

" === === Variables and functions/methods === ===
" Variables/ identifiers
hi! link Identifier DamienFire1
" Functions
hi! link Function DamienMetal0

" === === Preprocessor definitions === ===
" Preprocessor definitions
hi! link PreProc DamienWitch0
" Include definitions
hi! link Include DamienWitch0
" #define preprocessor definition
hi! link Define DamienWitch0
" Macro preproc
hi! link Macro DamienWitch0 
" Preproc conditionals
hi! link PreCondit DamienWitch0

" === === Constants and characters
" Generic constants
hi! link Constant DamienFire0
" Char constants
hi! link Character DamienMetal0
" String constants
hi! link String DamienDust3 
" Boolean constants
hi! link Boolean DamienWitch1
" Number Constants
hi! link Number DamienRoots1
" Float constants
hi! link Float DamienRoots1

" === === Generics and type definitions === ===
" Generic types
hi! link Type DamienFire1
" Statics, registers, volatiles
hi! link StorageClass DamienFire1
" Structures
hi! link Structure DamienWitch1
" Typedefs
hi! link Typedef DamienGold1 

" }}}
" Completion: {{{
" Pop-up menu snormal look
call s:Highlight('Pmenu', s:bone0, s:dust1)
" Pop-up menu selected item
call s:Highlight('PmenuSel', s:bg, s:metl0, s:bold)
" Pop-up menu scroll bar"
call s:Highlight('PmenuSbar', s:none, s:dust0)
" Pop-up menu scrollbar thumb
call s:Highlight('PmenuThumb', s:none, s:metl0)
" }}}
" Diffs: {{{

hi! link DiffDelete DamienErrBox
hi! link DiffAdd DamienSuccessBox
call s:Highlight('DiffChange', s:metl0, s:bg, s:inverse)
call s:Highlight('DiffText', s:dust1, s:bg, s:inverse)

" }}}

" === === Plugin-specific themeing === ===
" Most of those implementations are based
" on gruvbox implementations.
" EasyMotion: {{{

hi! link EasyMotionTarget Search
hi! link EasyMotionShade Comment

" }}}
" Sneak: {{{

autocmd ColorScheme damien hi! link Sneak Search
autocmd ColorScheme damien hi! link SneakLabel Search

" }}}
" GitGutter: {{{

hi! link GitGutterAdd DamienWitch1
hi! link GitGutterChange DamienMetal0
hi! link GitGutterDelete DamienWine1
hi! link GitGutterChangeDelete DamienMetal0

" }}}
" Vim Fugitive: {{{
hi! link gitcommitSelectedFile DamienWitch1
hi! link gitcommitDiscardedFile DamienWine1
" }}}
" Syntastic: {{{
call s:Highlight('SyntasticError', s:wine1, s:none, s:undercurl)
call s:Highlight('SyntasticWarning', s:fire3, s:none, s:undercurl)
hi! link SyntasticErrorSign DamienGold1
hi! link SyntasticWarningSign DamienGold1
" }}}
" NERDTree: {{{

hi! link NERDTreeDir DamienWitch0
hi! link NERDTreeDirSlash DamienRoots0

hi! link NERDTreeOpenable DamienGold0
hi! link NERDTreeClosable DamienGold0

hi! link NERDTreeFile DamienBone1
hi! link NERDTreeExecFile DamienFire1

hi! link NERDTreeUp DamienMetal0
hi! link NERDTreeCWD DamienWitch1
hi! link NERDTreeHelp DamienWine2

hi! link NERDTreeToggleOn DamienRoots1
hi! link NERDTreeToggleOff DamienWine0

" }}}
" Coc Nvim: {{{

hi! link CocWarningSign DamienGold1
hi! link CocErrorSign DamienWine1
hi! link CocInfoSign DamienRoots1
hi! link CocHintSign DamienMetal0

" }}}

" === === Filetype specific highlighting === ===
" C: {{{

hi! link cOperator Operator
hi! link cStructure Structure

" }}}
" Java: {{{

hi! link javaAnnotation DamienRoots1
hi! link javaDocTags DamienRoots1
hi! link javaCommentTitle DamienMetal0
hi! link javaParen DamienBone0
hi! link javaParen1 DamienBone0
hi! link javaParen2 DamienBone0
hi! link javaOperator Operator
hi! link javaVarArg DamienDust2

" }}}
" Vim: {{{

hi! link vimCommentTitle DamienMetal0
hi! link vimNotation DamienFire1
hi! link vimBracket DamienFire1
hi! link vimMapModKey DamienFire1
hi! link vimFuncSID DamienWine2
hi! link vimSetSep DamienBone
hi! link vimSep DamienBone1
hi! link vimContinue DamienBone1


" }}}
