" vim:fdm=marker ft=vim
" === === === === === === === === === ===
" File: autoload/airline/themes/irohLight.vim
" Desc: Airline theme for Iroh
" From github.com/UnikMask/iroh-vim
" License: MIT
" === === === === === === === === === ===

" Palette Setup: {{{

" Assign all elements their attribute colors.

" Background and foreground colors
let s:bg = ['#e9d49c', 187]
let s:fg = ['#7e504a', 95]

" Shades of orange-yellow - Antimony
let s:mony1 = ['#e3630a', 166]
let s:mony0 = ['#ff771d', 208]
let s:mony4 = ['#d38007', 172]
let s:mony3 = ['#faac09', 214]
let s:mony2 = ['#ffb032', 215]

" Shades of weaker green - Cobalts
let s:coba1 = ['#708994', 66]
let s:coba0 = ['#859eb1', 109]

" Shades of red - Iron glaze
let s:iron2 = ['#c22211', 124]
let s:iron1 = ['#ca2c18', 160]
let s:iron0 = ['#d33b24', 166]

" Shades of beige - Brush
let s:brush1 = ['#816459', 95]
let s:brush0 = ['#6b504a', 95]

" Shades of grey - Silver
let s:silv0 = ['#888888', 246]

" Shades of red-grey - Clay
let s:clay0 = ['#d6caab', 187]
let s:clay1 = ['#c7b78e', 180]
let s:clay2 = ['#bfa76a', 143]
let s:clay3 = ['#b59952', 137]

" Shades of green - Copper
let s:copp0 = ['#2385c5', 24]
let s:copp1 = ['#006274', 32]

" Represent null color
let s:none = ['NONE', 'NONE']

" }}}
" Airline Setup Function: {{{

" Function for formatting colors and specials into an airline understandable
" array.
function! s:airlineLook(fg, bg, ...)
	" Check if there is an extra argument
	if a:0 >= 1 && strlen(a:1)
		let ctrlp = a:1
	else 
		let ctrlp = ''
	endif

	" Assemble the airline look array
	let airlook = [a:fg[0], a:bg[0], a:fg[1], a:bg[1], ctrlp]

	" Return final airline look.
	return airlook
endfunction

" }}}
" Airline Variables: {{{

" Normal theme variables
let s:N0 = s:airlineLook(s:bg, s:clay1, 'bold')
	let s:N0_m = s:airlineLook(s:bg, s:clay2, 'bold')
let s:N1 = s:airlineLook(s:clay2, s:clay0)
	let s:N1_m = s:airlineLook(s:silv0, s:clay1)
let s:N2 = s:airlineLook(s:clay2, s:bg)
	let s:N2_m = s:N1

" Insert theme variables
let s:I0 = s:airlineLook(s:bg, s:mony2, 'bold')
	let s:I0_m = s:airlineLook(s:bg, s:mony3, 'bold')
let s:I1 = s:airlineLook(s:mony1, s:mony0)
	let s:I1_m = s:airlineLook(s:mony3, s:mony1)
let s:I2 = s:N2
	let s:I2_m = s:N2_m

" Replace theme variables
let s:R0 = s:airlineLook(s:bg, s:iron1, 'bold')
	let s:R0_m = s:airlineLook(s:bg, s:iron2, 'bold')
let s:R1 = s:airlineLook(s:mony0, s:iron0)
	let s:R1_m = s:airlineLook(s:mony1, s:iron1)
let s:R2 = s:N2
	let s:R2_m = s:N2_m

" Replace theme variables
let s:V0 = s:airlineLook(s:bg, s:copp0, 'bold')
	let s:V0_m = s:airlineLook(s:bg, s:copp1, 'bold')
let s:V1 = s:airlineLook(s:silv0, s:copp0)
	let s:V1_m = s:airlineLook(s:mony1, s:copp0)
let s:V2 = s:N2
	let s:V2_m = s:N2_m

" Inactive theme variable
let s:INA = s:airlineLook(s:bg, s:clay0)
let s:INA_m = s:airlineLook(s:clay1, s:clay0)
" }}}
" Airline Insertion: {{{

" Initialise empty palette for the theme
let g:airline#themes#irohLight#palette = {}

" Add normal palettes to the theme
let g:airline#themes#irohLight#palette.normal = airline#themes#generate_color_map(s:N0, s:N1, s:N2)
let g:airline#themes#irohLight#palette.normal_modified = {
			\ 	'airline_a' : s:N0_m,
			\ 	'airline_b' : s:N1_m,
			\ 	'airline_c' : s:N2_m,
			\ }

" Add insert palettes to the theme
let g:airline#themes#irohLight#palette.insert = airline#themes#generate_color_map(s:I0, s:I1, s:I2)
let g:airline#themes#irohLight#palette.insert_modified = {
			\ 	'airline_a' : s:I0_m,
			\ 	'airline_b' : s:I1_m,
			\ 	'airline_c' : s:I2_m,
			\ }

" Add replace palettes to the theme
let g:airline#themes#irohLight#palette.replace = airline#themes#generate_color_map(s:R0, s:R1, s:R2)
let g:airline#themes#irohLight#palette.replace_modified = {
			\ 	'airline_a' : s:R0_m,
			\ 	'airline_b' : s:R1_m,
			\ 	'airline_c' : s:R2_m,
			\ }

" Add visual palette to the theme.
let g:airline#themes#irohLight#palette.visual = airline#themes#generate_color_map(s:V0, s:V1, s:V2)
let g:airline#themes#irohLight#palette.visual_modified = {
			\ 	'airline_a' : s:V0_m,
			\ 	'airline_b' : s:V1_m,
			\ 	'airline_c' : s:V2_m,
			\ }

" Add inactive palette to theme
let g:airline#themes#irohLight#palette.inactive = airline#themes#generate_color_map(s:INA, s:INA, s:INA)
let g:airline#themes#irohLight#palette.inactive_modified = 
			\ {
			\ 	'airline_a' : s:INA_m,
			\ 	'airline_b' : s:INA_m,
			\ 	'airline_c' : s:INA_m,
			\ }
" }}}

