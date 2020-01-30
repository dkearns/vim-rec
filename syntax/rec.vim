" Vim syntax file
" Language:     GNU's Recutils
" Maintainer:   Zaid Al-Jarrah
" Filenames:    *.rec

if exists("b:current_syntax")
    finish
endif

syntax keyword recKeyword %allowed %auto %confidential %constraint %doc %key
syntax keyword recKeyword %mandatory %prohibit %rec %size %sort %unique
syntax keyword recKeyword %unique

syntax match recComment "\v^#.*$"
syntax match recField "\v^[a-zA-Z]*\:"

syntax keyword recType int bool range real size line regexp date contained containedin=recTypeAssociation,recTypeDeclaration
syntax keyword recType enum field email uuid rec contained containedin=recTypeAssociation,recTypeDeclaration
syntax match recTypeAssociation "\v^[\x25]type\: .*"hs=s,he=s+5 contains=recType
syntax match recTypeDeclaration "\v^[\x25]typedef\: .*"hs=s,he=s+7 contains=recType

syntax match recNumber "\v\-?\d+"
syntax match recNumber "\v\-?\d+\.\d+"
syntax match recNumber "\v\-?0[0-7]+"
syntax match recNumber "\v\-?0[xX][0-9a-fA-F]+"

highlight default link recComment Comment
highlight default link recField Identifier
highlight default link recKeyword Keyword
highlight default link recNumber Number
highlight default link recType Type
highlight default link recTypeAssociation Keyword
highlight default link recTypeDeclaration Keyword

let b:current_syntax = "rec"
