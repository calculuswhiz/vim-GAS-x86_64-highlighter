" Vim syntax file
" Language: GAS x86 Assembly
" Maintainer: calculuswhiz
" Latest Revision: 28 JAN 2017

if exists("b:current_syntax")
  finish
endif

"""""" BEGIN

"""""" Language main:
" Basic instructions:
syn match gasInstr  '\v<%(\caa[adms]|adc[bwlq]?|x?add[bwlq]?|and[bwlq]?|arpl|bound[wl]?|bs[fr][wlq]?|bswap[lq]?|bt[crs]?[wlq]?|call[wlq]?|clc|cld|cli|cltd[dqw]?|clts|cmc|cmov%(n?[abgl]e?|n?[ceosz]|np|p[eo]?)?[lqw]?|cmp[bwlq]?|cmps[bwdlq]?|cmpxchg[bwlq]?|cmpxchg%(8|16)b|cpuid|c[lw]td[bwlq]?|daa|das|dec[bwlq]?|div[bwlq]?|enter[wl]?|esc|hlt|idiv[bwlq]?|imul[bwlq]?|in[bwlq]?|inc[bwlq]?|insd?[bwlq]?|int%(\s*3|o)?|inv%(d|pcid)?|invlpg|iret[dfwq]?|j%(n?[abgl]e?|n?[ceosz]|np|p[eo]?)|jmp[lq]?|j[er]?cxz|[ls]ahf|lar|lcall[wlq]?|l[d-gs]s[wl]|lea[bwlq]?|leave[lwq]?|l[defgs]s|[ls][gil]dt[wl]?|ljmp[wl]?|lmsw|loadall|lods[bwdlq]?|loop%(n?[ez][dw]?)?|loopw|lret|lsl|ltr|mov%(%(s?%(b[lwq]?|w[lq]?|lq?|q)?)|%(z?%(b[lwq]|w[lq]|l|q)))?|movd|movabs[bwlq]?A?|movs%(x?d|w)|mov[sz]x[bwl]?|movzb|mul[bwlq]?|neg[bwlq]?|nop|not[bwlq]?|x?or[bwlq]?|out[bwlq]?|outs[bdwl]?|pop[bwlq]?|popal?|pop[af]d|popf[wlq]?|push[bwlq]?|pushal?|push[af]d|pushf[wlq]?|rc[lr][bwlq]?|%(rd|wr)msr|rdtscp?|ret[fw]?[ql]?|ro[lr][bwlq]?|rsm|sa[lr][bwlq]?|sbb[bwlq]?|scas[bwdlq]?|set%(n?[abgl]e?|n?[ceosz]|np|p[eo]?)b?|sh[lr]d?[bwlq]?|smsw|stc|std|sti|stos[bdqlw]?|str|sub[bwlq]?|swapgs|syscall|sysret|sysenter|sysexit|test[bwlq]?|ud1|ud2[ab]?|ver[rw]|fwait|wbinvd|xchg[bwlq]?A?|x[gs]etbv|xlatb?|xsave[cs]?%(64)?|xrstors?%(64)?)%(\:@!)>'

" x87 instructions:
syn match gasInstr  '\v<%(\cf%(2xm1|abs|add[psl]?|bld|b?stp|chs|n?clex|fcomp?l|u?comp{0,2}|decstp|n?disi|divr?[psl]?|n?eni|nsetpm|rstpm|free%(p|\s*ST)?|iadd[sl]?|icomp?|idivr?[sl]?|ildl?|imul[sl]?|incstp|n?init|ist%(%(pl?|l)|tp)?|isubr?[sl]?|ld[1slt]?|ldcw|ldenv[dw]?|ldl2[et]|ldl[gn]2|ldpi|ldz|mul[psl]?|nop|n?stenv[wd]?|n?stsw|pa?tan|prem1?|rndint|rstor[dw]?|n?savew?|scale|sqrt|st%(p?[slt])|n?stcw|subr?[psl]?|tst|wait|xam|xch|xtract|yl2x%(p1)?|setpm|cos|saved|sin%(cos)?|cmovn?b?e?|cmovn?u|u?comip?|xrstor%(64)?|xsave%(64)?))%(:@!)>'

"""""" Labels main:
syn match gasLabel '\v%(%(\s+|;|^)@<=%(%([A-Za-z\$_\.0-9]|C-[BA])+[:]))'

" Registers
syn match gasRegister '\v\%\s*%(\c[er]?[a-d]x|[a-d][lh]|[re]?s[ip]|s[ip]l|[re]?di|dil|[re]?bp|bpl|[c-gs]s|[re]?ip|e?flags|db%([0236-9]|1[0-5]?)|tr[0267]?|st%(\(%([89]|\d{2,})\)@!)|esp[0-2]|[xy]?mm%([02-9]|1[0-5]?)|zmm%([4-9]|[12][0-9]?|3[10]?)|xmcrt|[gli]dtr|[cd]r%([02-9]|1[0-5]?)|msr|r%([89]|1[0-5])[dwb]?|[cst]w|fp_%([id]p|[cd]s|opc)|mxcsr|msw)>'

"""""" NUMBERS/LITERALS/CONSTANTS
" Decimal Constant:
syn match gasConstant '\v\w@<![-+~]?%(\d+%(\.\d*)?|\.\d+)%(e[+-]?\d+)?'

" Decimal Literal
syn match gasLiteral '\v\w@<![\$][-+~]?%(\d+%(\.\d*)?|\.\d+)%(e[+-]?\d+)?'

" Hex Constant:
syn match gasConstant '\v\w@<![-+~]?\c%(0x)\x+>'

" Hex Literal:
syn match gasLiteral '\v\w@<![\$][-+~]?\c%(0x)\x+>'

" Binary Constant:
syn match gasConstant '\v\w@<![-+~]?%(0[Bb])[01]+>'

" Binary Literal:
syn match gasLiteral '\v\w\@<![\$][-+~]?%(0[Bb])[01]+>'

" Octal Constant:
syn match gasConstant '\v\w@<![-+~]?0\o*>' 

" Octal Literal
syn match gasLiteral '\v\w@<![\$][-+~]?0\o*>'

" Float Constant:
syn match gasConstant '\v\w@<!\c0[DFT][+-]?%(\d+%(\.\d*)|\.\d+)%(e[+-]?[0-9]+)?'

" Float Literal:
syn match gasLiteral '\v\w@<![\$]\c0[DFT][+-]?%(\d+%(\.\d*)|\.\d+)%(e[+-]?[0-9]+)?'

" Character Constant:'
syn match gasConstant '\v\w@<!\c\'%([\d32-\d91\d93-\d126]|\\%([\\bfnrt]|x\x{1,2}|[0-9]{3}))%(\'@!)'

" Character Literal:
syn match gasLiteral '\v\w@<![\$]\c\'%([\d32-\d91\d93-\d126]|\\%([\\bfnrt]|x\x{1,2}|[0-9]{3}))%(\'@!)'

" String: (TODO: Fix \\\" Bug)
syn match gasString  '\v%(\".{-}%(%([^\\][\\])@<!)\"|\<.{-}%(%([^\\][\\])@<!)\>)'

""""""""""""""""""""""""""""""""

""""""" Other things:
" Subsections, pseudo-ops, directives (. prefixed)
syn match gasPreproc '\v%(\w@<!)%(\c\.%(allow_index_reg|app-file|asci[iz]|b?align|bundle_%(align_mode|%(un)?lock)|bss|[42]?byte|cfi_%(sections|startproc|endproc|personality|lsda|def_cfa|def_cfa_register|def_cfa_offset|adjust_cfa_offset|offset|rel_offset|register|restore|undefined|same_value|remember_state|return_column|signal_frame|window_save|escape|val_encoded_addr)|code%(16%(gcc)?|32|64)|data|def|desc|dim|double|eject|else%(if)?|end%([ei]f|func|[mr])?|exitm|equ%(iv)?|eqv|err%(or)?|extern|fail|file|fill|t?float|globa?l|hidden|hword|ident|if%(def|eqs?|[gl][et]|n?[bc]|n%(ot)?def|nes?)?|incbin|include|int%(ernal)?|irpc?|l?comm|lflags|linkonce|loc%(_mark_labels|al)?|mri|%(no)?list|long|macro|%(no)?altmacro|octa|operand_check|org|p2align[wl]?|%(pop|push)?section|previous|print|protected|p?size|purgem|quad|rept|sbttl|scl|set|secrel32|short|single|skip|sleb128|space|sse_check|stab[dns]|string%(8|16|32|64)?|struct|subsection|symver|tag|text|title|type|uleb128|val%(ue)?|version|vtable_%(entry|inherit)|warning|weak%(ref)?|word|zero|att_syntax%(\s*prefix)?)>)|%(LOCAL>)'

" / comments
syn match gasComment '^[ \t]*/.*$'

" 1-line comments
syn match gasComment '\v%(\#|\/\/).*$'

" C-preprocessor (# prefixed)
syn match gasPreproc    '\v^\s*%(\#@<!)%(\#%(\#%(\#@!)|%(un)?assert|define|elif|else|endif|error|ident|%(ifn?|un)?def|if|import|include%(_next)?|line|pragma|sccs|warning))|__%(FILE|LINE|DATE|TIME%(STAMP)?|STDC_%(VERSION|HOSTED)?|GNUC|GNUC_MINOR|GNUC_PATCHLEVEL|VERSION|STRICT_ANSI|BASE_FILE|INCLUDE_LEVEL|OPTIMIZE|OPTIMIZE_SIZE|NO_INLINE|CHAR_UNSIGNED|CHAR_BIT|INT_SHORT|SCHAR_MAX|SHRT_MAX|INT_MAX|LONG_MAX|LONG_LONG_MAX|REGISTER_PREFIX|USER_LABEL_PREFIX)__>$'

" Block comments
syn region gasComment start="\v\s*\/\*" end="\v\*\/" fold

""""""""""""""""""""""""""""""""

"""""" MAP TO VIM SYMBOLS
let b:current_syntax = "GAS"

hi def link gasInstr            Function
hi def link gasRegister         Type
hi def link gasConstant         Constant
hi def link gasLiteral          Special
hi def link gasString           String
hi def link gasComment          Comment
hi def link gasPreproc          PreProc
hi def link gasLabel            Title
