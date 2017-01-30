" Vim syntax file
" Language: GAS x86 Assembly
" Maintainer: calculuswhiz
" Latest Revision: 28 JAN 2017

if exists("b:current_syntax")
  finish
endif

"""""" BEGIN

"""""" Language main:
" Basic instructions
syn match gasInstr  '\v<%(\caa[adms]|adc[bwlq]?|x?add[bwlq]?|and[bwlq]?|arpl|bound[wl]?|bs[fr][wlq]?|bswap[lq]?|bt[crs]?[wlq]?|call[wlq]?|clc|cld|cli|cltd[dqw]?|clts|cmc|cmov%(n?[abgl]e?|n?[ceosz]|np|p[eo]?)?[lqw]?|cmp[bwlq]?|cmps[bwdlq]?|cmpxchg[bwlq]?|cmpxchg%(8|16)b|cpuid|c[lw]td[bwlq]?|daa|das|dec[bwlq]?|div[bwlq]?|enter[wl]?|esc|hlt|idiv[bwlq]?|imul[bwlq]?|in[bwlq]?|inc[bwlq]?|insd?[bwlq]?|int%(\s*3|o)?|inv%(d|pcid)?|invlpg|iret[dfwq]?|j%(n?[abgl]e?|n?[ceosz]|np|p[eo]?)|jmp[lq]?|j[er]?cxz|[ls]ahf|lar|lcall[wlq]?|l[d-gs]s[wl]|lea[bwlq]?|leave[lwq]?|l[defgs]s|[ls][gil]dt[wl]?|ljmp[wl]?|lmsw|loadall|lods[bwdlq]?|loop%(n?[ez][dw]?)?|loopw|lret|lsl|ltr|mov%(%(s?%(b[lwq]?|w[lq]?|lq?|q)?)|%(z?%(b[lwq]|w[lq]|l|q)))?|movd|movabs[bwlq]?A?|movs%(x?d|w)|mov[sz]x[bwl]?|movzb|mul[bwlq]?|neg[bwlq]?|nop|not[bwlq]?|x?or[bwlq]?|out[bwlq]?|outs[bdwl]?|pop[bwlq]?|popal?|pop[af]d|popf[wlq]?|push[bwlq]?|pushal?|push[af]d|pushf[wlq]?|rc[lr][bwlq]?|%(rd|wr)msr|rdtscp?|ret[fw]?[ql]?|ro[lr][bwlq]?|rsm|sa[lr][bwlq]?|sbb[bwlq]?|scas[bwdlq]?|set%(n?[abgl]e?|n?[ceosz]|np|p[eo]?)b?|sh[lr]d?[bwlq]?|smsw|stc|std|sti|stos[bdqlw]?|str|sub[bwlq]?|swapgs|syscall|sysret|sysenter|sysexit|test[bwlq]?|ud1|ud2[ab]?|ver[rw]|fwait|wbinvd|xchg[bwlq]?A?|x[gs]etbv|xlatb?|xsave[cs]?%(64)?|xrstors?%(64)?)%(\:@!)>'

" Prefixes
syn match gasPrefix '\v<%(\crep%(n?[ez])?|[c-gs]s|%(addr|data)%(16|32)|lock|wait|rex%(64%(xyz)?)?)%(\:@!)>'

" Conversion_instructions
syn match gasInstr '\v<%(\ccbw|cdqe?|cwde?|cdo|cqo|cbtw|cwt[ld]|clt[dq]|cqto)%(\:@!)>'

" MMX
syn match gasInstr '\v<%(\cemms|movdq|mov[dq]b|pack%(ssdw|[us]swb)|padd%([bdw]|u?s[bw])|pandn?|pcmp%(eq|gt)[bdw]|pmaddwd|pmul[hl]w|psll[dqw]|psr%(a[dw]|l[dqw])|psub%([bdw]|u?s[bw])|punpck[hl]%(bw|dq|wd)|px?or|rdpmc)%(\:@!)>'

" SSE
syn match gasInstr '\v<%(\cmaskmovq|movntps|movntq|prefetcht[012]|prefetchnta|sfence)%(\:@!)>'

" SSE simd
syn match gasInstr '\v<%(\cadd[sp]s|cmp[ps]s|u?comiss|cvt%(p%(i2ps|s2pi)|s%(i2ss|s2sd)q?|t%(ps2pi|s[sd]2siq?))|div[ps]s|ldmxcsr|%(max|min)[ps]s|mov%(a|hl?|lh?|msk|nt)ps|v?mov%(s|up)s|mul[ps]s|rcp[ps]s|r?sqrt[ps]s|shufps|stmxcsr|sub[ps]s|unpck[hl]ps|andn?ps|x?orps|pavg[bw]|pextrw|pminsrw|p%(max|min)%(sw|ub)|pmovmskb|pmulhuw|psadbw|pshufw)%(\:@!)>'

" SSE2
syn match gasInstr '\v<%(\cclflush|[lm]fence|maskmovdqu|v?movnt%(dq|i[lw]?|pd)|pause)%(\:@!)>'

" SSE2 simd
syn match gasInstr '\v<%(\cv?add[ps][ds]|andn?pd|bzhi[wl]?|cmp[ps]d|u?comisd|cvtdq2p[ds]|cvtt?pd2%(dq|pi)|cvtpd2ps|cvtp[is]2pd|cvtt?ps2dq|cvtt?sd2s[is]|cvts[is]2sd|div[ps][ds]|v?%(max|min)[ps][ds]|v?mov[ahlu]pd|v?movmskpd|v?mul[ps]d|x?orpd|shufpd|sqrt[ps]d|sub[ps]d|unpck[hl]pd|unpcklpd|movdq%(2q|[au])|movq2dq|paddq|psubq|pmuludq|pshuf%([hl]w|d)|ps[lr]ldq|punpck[hl]qdq)%(\:@!)>'

" SSE3
syn match gasInstr '\v<%(\clddqu|monitor|mwait)%(\:@!)>'

" ssse3 simd
syn match gasInstr '\v<%(\caddsubp[ds]|haddp[ds]|hsubp[ds]|v?mov%(d|s[hl])dup|psign[bdw]|pshufb|pmulhrsw|pmaddubsw|phsub%(s?w|d)|phadd%(s?w|d)|palignr|pabs[bdw])%(\:@!)>'

" SSE4 simd
syn match gasInstr '\v<%(\cv?mpsadbw|phminposuw|pmul%(ld|dq)|dpp[ds]|blendv?p[ds]|pblendvb|pblendw|pswapd|p%(max|min)%(s[bd]|u[wd])|roundp[ds]|rounds[ds]|insertps|pinsr[bwdq]|extractps|pextr[bdq]|pmov[sz]xb[dwq]|pmov[sz]xw[dq]|pmov[sz]xdq|pmov[sz]x|ptest|pcmpeqq|packusdw|v?movntdqa|lzcnt|popcnt|extrq|insertq|movnts[ds]|crc32|pcmp[ei]str[im]|pcmpgtq)%(\:@!)>'

" x87 (floating point) instructions
syn match gasInstr  '\v<%(\cf%(2xm1|abs|add[psl]?|bld|b?stp|chs|n?clex|fcomp?l|u?comp{0,2}|decstp|n?disi|divr?[psl]?|n?eni|nsetpm|rstpm|free%(p|\s*ST)?|iadd[sl]?|icomp?|idivr?[sl]?|ildl?|imul[sl]?|incstp|n?init|ist%(%(pl?|l)|tp)?|isubr?[sl]?|ld[1slt]?|ldcw|ldenv[dw]?|ldl2[et]|ldl[gn]2|ldpi|ldz|mul[psl]?|nop|n?stenv[wd]?|n?stsw|pa?tan|prem1?|rndint|rstor[dw]?|n?savew?|scale|sqrt|st%(p?[slt])|n?stcw|subr?[psl]?|tst|wait|xam|xch|xtract|yl2x%(p1)?|setpm|cos|saved|sin%(cos)?|cmovn?b?e?|cmovn?u|u?comip?|xrstor%(64)?|xsave%(64)?))%(:@!)>'

" AES functions
syn match gasInstr '\v<%(\cv?aes%(en|de)c%(last)?|v?aeskeygenassist|aesimc)%(:@!)>'

" SHA functions
syn match gasInstr '\v<%(\csha%(%(1|256)msg[12]|1nexte|1rnds4|256rnds2))%(:@!)>'

" BMI1
syn match gasInstr '\v<%(\candn[lq]?|bextr[lq]?|blsi[lq]?|blsmsk[lq]?|blsr[dlq]?|tzcnt[wlq]?)%(:@!)>'

" BMI2
syn match gasInstr '\v<%(\cmulx[lq]?|pdep[lq]?|pext[lq]?|rorx[lq]?|s%(h[lr]|ar)x)%(:@!)>'

" ADX
syn match gasInstr '\v<%(\cad[co]x)l?%(:@!)>'

" CLMUL
syn match gasInstr '\v<%(\cpclmulqdq)%(:@!)>'

" PREFETCHWT
syn match gasInstr '\v<%(\cprefetchw%(t1)?)%(:@!)>'

" AMD3DNOW
syn match gasInstr '\v<%(\cprefetch|femms|pavgusb|pf2id|pfacc|pfadd|pfcmpeq|pfcmpge|pfcmpgt|pfmax|pfmin|pfmul|pfrcp|pfrcpit[12]|pfrsqit1|pfrsqrt|pfsubr?|pi2fd|pmulhrw)>'

" AMDNOPS
syn match gasInstr '\v<%(nop[lwq])'

" CLFLUSHOPT
syn match gasInstr '\v<%(\cclflushopt)%(:@!)>'

" RDSEED
syn match gasInstr '\v<%(\crdseed)%(:@!)>'

" MPX
syn match gasInstr '\v<%(\cbnd%(c[uln]|mk|stx))%(:@!)>'

" FSGSBASE
syn match gasInstr '\v<%(\c%(rd|wr)[fg]sbase)%(:@!)>'

" RDRAND
syn match gasInstr '\v<%(\crdrand)%(:@!)>'

" AVX
syn match gasInstr '\v<%(\cvadd%(sub)?p[ds]|vandn?p[ds]|vblendv?p[ds]|vbroadcastf128|vbroadcasts[ds]|vroundp[ds]|vcmp[ps][ds]|vcvtdq2p[ds]|vcvtpd2%(dq|ps)[xy]?|vcvtps2%(dq|pd)|vcvttpd2dq[xy]?|vcvttps2dq|vdivp[ds]|vdpps|vextractf128|vh%(add|sub)p[ds]|vinsertf128|vlddqu|vmovap[ds]|vmovd%(q[au])?|vmovup[ds]|vmaskmovp[ds]|v%(max|min)p[ds]|vmov%(d|s[hl])?dup|vmovmskp[ds]|vmulp[ds]|vx?orp[ds]|vpermilp[ds]|vperm2f128|vrcpps|vrsqrtps|vpxor|vshufp[ds]|vsqrtp[ds]|vmovntp[ds]|vmovntdq|vsubp[ds]|vtestp[ds]|vptest|vunpck[lh]p[ds]|vzero%(all|upper)|vpcmp[ei]str[im])%(:@!)>'

" AVX2
syn match gasInstr '\v<%(\cvpabs[bdw]|vpadd[bdqw]|vpaddu?s[bw]|vpalignr|vpandn?|vpavg[bw]|vpblend[dw]|vpblendvb|vpbroadcast[bdqw]|movddup|vbroadcasts[ds]|vbroadcasti128|vps[lr]ldq|vpcmp%(eq|gt)[bdqw]|vpmovsx%(wd|wq|dq|bw)|v%(extract|insert)i128|vperm2i128|vph%(add|sub)%(d|s?w)|vpmaskmov[dq]|vpmovmskb|vpor|vpsign[bdw]|vp%(ext|ins)rq|vphminposuw|vaesimc)%(:@!)>'

" AVX512
syn match gasInstr '\v<%(\cvpabs[bdqw]|vpandn?[dq]|vpadd[bdwq]|valignq|vpblendm[bdqw]|vbroadcast[if]32x[248]|vbroadcast[if]64x[24]|vpbroadcastm%(b2q|w2d)|vpcmpu?[bdqw]|vcomis[ds]|vpcompress[dq]|vcompressp[ds]|vpconflict[dq]|vcvtqq2ps[xy]?|vcvtqq2pd|vcvtudq2p[ds]|vcvtuqq2pd|vcvtuqq2ps[xy]|vcvtsi2sd|vcvtsi2ssl?|vcvtt?p[ds]2u?[dq]q|vcvtt?sd2%(u?si|s[is])|vcvtss2u?si|vcvtss2s[di]|vcvtusi2s[sd]l?|vpmov[sz]x%(w[dq]|dq|b[wdq])|vpmovu?s?%(wb|d[wb]|q[wdb])|vcvtts[ds]2u?si|vdbpsadbw|vdiv[ps][ds]|vexp2p[ds]|vpexpand[dq]|vexpandp[ds]|v%(extract|insert)[fi]32x[48]|v%(extract|insert)[if]64x[24]|vfixupimm[ps][ds]|vfpclassp[ds][xyz]?|vfpclasss[ds]|vgetexp[ps][ds]|vgetmant[ps][ds]|vp?%(gather|scatter)[dq]%(ps|[qd]|pd)|kandn?w|kmovw|knotw|k%(xn?)?orw|kortestw|kunpck%(bw|dq|wd)|vmovq|vmovdqa%(32|64)|vmovs[ds]|vmovdqu%(8|16|32|64)|vplzcnt[dq]|vpmadd%(wd|52[hl]uq|ubsw)|vp%(max|min)[su][bdqw]|vpmov[bdqw]2m|vpmovm2[bdqw]|vpmulu?dq|vmulss|vpmulhu?w|vpmulhrsw|vpmull[dqw]|vpmultishiftqb|vpor[dq]|vpack[us]s%(wb|dw)|vperm[bdqw]|vpermp[ds]|vperm[it]2[bdqw]|vperm[it]2p[ds]|v%(gather|scatter)pf[01][dq]p[ds]|v%(range|reduce)[ps][ds]|vrcp%(14|28)[ps][ds]|vpro[lr]v?[dq]|vrndscale[ps][ds]|vrsqrt%(14|28)[ps][ds]|vpsadbw|vscalef[ps][ds]|vpxor[dq]|vpshuf[bd]|vshuf[if]32x4|vshuf[if]64x2|vpshuf[hl]w|vpsllv?[wdq]|vsqrts[ds]|vpsr[al]v?[dqw]|vpsub[bdqw]|vsubs[ds]|vpsubu?s[bw]|vpternlog[dq]|vptestn?m[bdqw]|vpunpck[hl]%(wd|q?dq|bw)|vpxord|vucomis[ds]|vcvtpd2udq[xy]|vpclmul[lh]q[lh]qdq)%(:@!)>'

" AVX512BW
syn match gasInstr '\v<%(\ck%(andn?|or|xn?or|not|ortest|test|shift[rl]w?|mov[qd]|add)[dq]|cmp%(eq|le|lt|neq|nle[p]s|nlt|ord|unord)[ps]s)%(:@!)>'
  
" AVX512DQ
syn match gasInstr '\v<%(\ck%(andn?b|orb|xn?orb|notb|ortestb|test[bw]|shift[rl]b|movb|add[bw])[bw])%(:@!)>'

" F16C
syn match gasInstr '\v<%(\cvcvt%(ph2ps|ps2ph))%(:@!)>'

" FMA
syn match gasInstr '\v<%(\cvfn?m%(%(add%(sub)?|sub%(add)?)%(%(132|213|231)?[ps][ds])))%(:@!)>'

" KNC
syn match gasInstr '\v<%(\cvpandn?[dq]|vpad[cd]d|vaddn?p[ds]|vpaddset[cs]d|vaddsetsps|valignd|vpblendm[dq]|vblendmp[ds]|clevict[01]|vpcmpu?d)%(:@!)>'

" RTM
syn match gasInstr '\v<%(\cx%(abort|begin|end|test))%(:@!)>'

" HLE
syn match gasInstr '\v<%(\cx%(acquire|release|test))%(:@!)>'

" XSAVE
syn match gasInstr '\v<%(\cxsaveopt%(64)?)%(:@!)>'

" CRC32
syn match gasInstr '\v<%(\ccrc32[bwlq])%(:@!)>'

" Miscellaneous
syn match gasInstr '\v<%(\cxstorerng|vmxoff|getsec|vpclmulqdq|movbe|invept|invvpid|vmload|blcfill|v%(ld|st)mxcsr)%(:@!)>'

"""""" Other Keywords:
syn match gasOther '\v%(\#%(alloc|write|execinstr|exclude|tls)|\@%(%(prog|no)bits|note|%(%(pre)?init|fini)_array)|[\#\@\%]%(%(gnu_indirect_)?function|%(tls_)?object|common|notype|gnu_unique_object)|comdat|\.gnu\.linkonce|discard|one_only|same_%(size|contents)|STT_%(%(GNU_I)?FUNC|OBJECT|TLS|COMMON|NOTYPE))>'

" Labels
syn match gasLabel '\v%(%(\s+|;|^)@<=%(%([A-Za-z\$_\.0-9]|C-[BA])+[:]))'

" Registers
syn match gasRegister '\v\%\s*%(\c[er]?[a-d]x|[a-d][lh]|[re]?s[ip]|s[ip]l|[re]?di|dil|[re]?bp|bpl|[c-gs]s|[re]?ip|e?flags|db%([0236-9]|1[0-5]?)|tr[0267]?|st%(\(%([89]|\d{2,})\)@!)|esp[0-2]|[xy]?mm%([02-9]|1[0-5]?)|zmm%([4-9]|[12][0-9]?|3[10]?)|xmcrt|[gli]dtr|[cd]r%([02-9]|1[0-5]?)|msr|r%([89]|1[0-5])[dwb]?|[cst]w|fp_%([id]p|[cd]s|opc)|mxcsr|msw)>'

" Opmask registers
syn match gasRegister '\v\%\s*(k[0-7])>'

" That weird riz/eiz non-register:
syn match Error   '\v\%\s*[er]iz>'

" Invalid instructions:
syn match Error '\v<%(\cmovz(lq)?)>'

"""""" NUMBERS/LITERALS/CONSTANTS
" Decimal Constant
syn match gasConstant '\v\w@<![-+~]?%(\d+%(\.\d*)?|\.\d+)%(e[+-]?\d+)?'

" Decimal Literal
syn match gasLiteral '\v\w@<![\$][-+~]?%(\d+%(\.\d*)?|\.\d+)%(e[+-]?\d+)?'

" Hex Constant
syn match gasConstant '\v\w@<![-+~]?\c%(0x)\x+>'

" Hex Literal
syn match gasLiteral '\v\w@<![\$][-+~]?\c%(0x)\x+>'

" Binary Constant
syn match gasConstant '\v\w@<![-+~]?%(0[Bb])[01]+>'

" Binary Literal
syn match gasLiteral '\v\w\@<![\$][-+~]?%(0[Bb])[01]+>'

" Octal Constant
syn match gasConstant '\v\w@<![-+~]?0\o*>' 

" Octal Literal
syn match gasLiteral '\v\w@<![\$][-+~]?0\o*>'

" Float Constant
syn match gasConstant '\v\w@<!\c0[DFT][+-]?%(\d+%(\.\d*)|\.\d+)%(e[+-]?[0-9]+)?'

" Float Literal
syn match gasLiteral '\v\w@<![\$]\c0[DFT][+-]?%(\d+%(\.\d*)|\.\d+)%(e[+-]?[0-9]+)?'

" Character Constant
syn match gasConstant '\v\w@<!\c\'%([\d32-\d91\d93-\d126]|\\%([\\bfnrt]|x\x{1,2}|[0-9]{3}))%(\'@!)'

" Character Literal
syn match gasLiteral '\v\w@<![\$]\c\'%([\d32-\d91\d93-\d126]|\\%([\\bfnrt]|x\x{1,2}|[0-9]{3}))%(\'@!)'

" String: (It's complicated because it might end with a backslash quote.)
syn match gasString  '\v%(\".{-}%([^\\]%([\\][\\])*)\"|\<.{-}%([^\\]%([\\][\\])*)\>)'

""""""""""""""""""""""""""""""""

""""""" Other things:
" Subsections, pseudo-ops, directives (. prefixed)
syn match gasPreproc '\v%(\w@<!)%(\c\.%(allow_index_reg|app-file|asci[iz]|b?align|bundle_%(align_mode|%(un)?lock)|bss|[42]?byte|cfi_%(sections|startproc|endproc|personality|lsda|def_cfa|def_cfa_register|def_cfa_offset|adjust_cfa_offset|offset|rel_offset|register|restore|undefined|same_value|remember_state|return_column|signal_frame|window_save|escape|val_encoded_addr)|code%(16%(gcc)?|32|64)|data|def|desc|dim|double|eject|else%(if)?|end%([ei]f|func|[mr])?|exitm|equ%(iv)?|eqv|err%(or)?|extern|fail|file|fill|t?float|globa?l|hidden|hword|ident|if%(def|eqs?|[gl][et]|n?[bc]|n%(ot)?def|nes?)?|incbin|include|int%(ernal)?|irpc?|l?comm|lflags|linkonce|loc%(_mark_labels|al)?|mri|%(no)?list|long|macro|%(no)?altmacro|octa|operand_check|org|p2align[wl]?|%(pop|push)?section|previous|print|protected|p?size|purgem|quad|rept|sbttl|scl|set|secrel32|short|single|skip|sleb128|space|sse_check|stab[dns]|string%(8|16|32|64)?|struct|subsection|symver|tag|text|title|type|uleb128|val%(ue)?|version|vtable_%(entry|inherit)|warning|weak%(ref)?|word|zero|att_syntax%(\s*prefix)?)>)|%(LOCAL>)'

" Arch specification:
syn match gasArch   '\v%(\w@<!)\.%(\c%(arch) %(i8086|i[1-6]86|pentium%(pro|iii?|4)?|prescott|nocona|core%(2|i7)?|[lk]1om|k6%(_2)?|athlon|k8|amdfam10|bdver[1-3]|btver[12]|generic%(32|64)|.%(8087|[32]87|mmx|sse%([235]|4%(\.[12]|a)?)?|ssse3|avx[2]?|[vs]mx|ept|clflush|movbe|xsave%(opt)?|aes|pclmul|fma|fsgsbase|rdrnd|f16c|bmi2|lzcnt|invpcid|vmfunc|hle|rtm|adx|rdseed|prfchw|smap|mpx|sha|3dnowa?|syscall|rdtscp|svme|abm|lwp|fma4|xop|cx16|padlock|avx512%(p?f|cd|er)?)))%(\,\s*%(no)?jumps)?'

" Invalid directives:
syn match Error     '\v%(\w@<!)\.%(\cabort|line|ln|loc_mark_blocks|intel_syntax%(\s*(no)?prefix)?|att_syntax\s*noprefix)>'

" .set and .eqv shorthands with = and ==
syn match altOp contained     '\v\s*\=\=?\s*'
syn match altVar  '\v<%(%(\.if )@<!)%([A-Za-z\$_\.0-9]+)%(%(\s*\=\=?\s*)@=)' nextgroup=altOp

" / comments
syn match gasComment '^[ \t]*/.*$'

" 1-line comments
syn match gasComment '\v%(\#|\/\/).*$'

" C-preprocessor (# prefixed)
syn match gasPreproc    '\v^\s*%(\#@<!)%(\#%(\#%(\#@!)|%(un)?assert|define|elif|else|endif|error|ident|%(ifn?|un)?def|if|import|include%(_next)?|line|pragma|sccs|warning))|__%(FILE|LINE|DATE|TIME%(STAMP)?|STDC_%(VERSION|HOSTED)?|GNUC|GNUC_MINOR|GNUC_PATCHLEVEL|VERSION|STRICT_ANSI|BASE_FILE|INCLUDE_LEVEL|OPTIMIZE|OPTIMIZE_SIZE|NO_INLINE|CHAR_UNSIGNED|CHAR_BIT|INT_SHORT|SCHAR_MAX|SHRT_MAX|INT_MAX|LONG_MAX|LONG_LONG_MAX|REGISTER_PREFIX|USER_LABEL_PREFIX)__>'

" Workaround for ## comment
syn match gasComment '\v^\s*##.*$'

" Warnings. Happens when comment is attempted with # on keywords
syn match gasWarn '\v^\s*%(\#\s+%(%(un)?assert|define|elif|else|endif|error|ident|%(ifn?|un)?def|if|import|include%(_next)?|line|pragma|sccs|warning)>).*'

" Block comments
syn region gasComment start="\v\s*\/\*" end="\v\*\/" fold

""""""""""""""""""""""""""""""""

"""""" MAP TO VIM SYMBOLS
let b:current_syntax = "GAS"

hi def link gasInstr            Function
hi def link gasPrefix           Keyword
hi def link gasOther            Keyword
hi def link gasWarn             WarningMsg
hi def link gasRegister         Type
hi def link gasConstant         Constant
hi def link gasLiteral          Special
hi def link gasString           String
hi def link gasArch             Underlined
hi def link gasComment          Comment
hi def link gasPreproc          PreProc
hi def link gasLabel            Title
hi def link altVar              StorageClass
hi def link altOp               Operator
