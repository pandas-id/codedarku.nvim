local lush = require('lush')
local colors = require("codedarku.colors")

local theme = lush(function()
  return {
    Comment({ bg=colors.none, fg=colors.green, gui='italic' }),
    ColorColumn({ bg=colors.green, fg=colors.blue }),
    Conceal({ bg=colors.bg, fg=colors.fg }),
    Cursor({ bg=colors.cursorlight, fg=colors.cursordark }), -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn({ bg=colors.cursordarkdark, fg=colors.none }),
    CursorLine({ bg=colors.cursordarkdark, fg=colors.none }),
    Directory({ bg=colors.none, fg=colors.blue }),
    DiffAdd({ bg=colors.diffgreendark, fg=colors.none }),
    DiffChange({ bg=colors.diffreddark, fg=colors.none }),
    DiffDelete({ bg=colors.diffredlight, fg=colors.none }),
    DiffText({ bg=colors.diffredlight, fg=colors.nonr }),
    EndOfBuffer({ bg=colors.bg, fg=colors.linenumber }),
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg({ bg=colors.none, bg=colors.red }),
    VertSplit({ bg=colors.none, bg=colors.spligdark }),
    Folded({ bg=colors.none, fg=colors.gray }),
    FoldColumn({ bg=colors.none, fg=colors.linenumber }),
    SignColumn({ bg=colors.none, fg=colors.none }), -- column where |signs| are displayed
    IncSearch({ bg=colors.searchcurrent, fg=colors.none }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr({ bg=colors.none, fg=colors.gray }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr({ bg=colors.cursordarkdark, fg=colors.gray }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen({ bg=colors.none, fg=colors.red }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg({ bg=colors.leftdark, fg=colors.none }), -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg({ bg=colors.leftdark, fg=colors.none }), -- |more-prompt|
    NonText({ bg=colors.none, fg=colors.linenumber }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal({ bg=colors.bg, fg=colors.fg }),
    NormalFloat({ bg=colors.popuphighlightgray, fg=colors.popupfront }), -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu({ bg=colors.popupback, fg=colors.popupfront }), -- Popup menu: normal item.
    PmenuSel({ bg=colors.popuphighlightblue, fg=colors.popupfront }), -- Popup menu: selected item.
    PmenuSbar({ bg=colors.popuphighlightgray, fg=colors.none }), -- Popup menu: scrollbar.
    PmenuThumb({ bg=colors.popupfront }), -- Popup menu: Thumb of the scrollbar.
    Question({ bg=colors.bg, fg=colors.blue }), -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search({ bg=colors.search, fg=colors.none }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey({ bg=colors.none, fg=colors.blue }), -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad({ bg=colors.bg, fg=colors.red }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap({ bg=colors.bg, fg=colors.red }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal({ bg=colors.bg, fg=colors.red }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare({ bg=colors.bg, fg=colors.red }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine({ bg=colors.leftmid, fg=colors.fg }), -- status line of current window
    StatusLineNC({ bg=colors.leftdark, fg=colors.fg }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine({ bg=colors.tabother, fg=colors.fg }), -- tab pages line, not active tab page label
    TabLineFill({ bg=colors.taboutside, fg=colors.fg }), -- tab pages line, where there are no labels
    TabLineSel({ bg=colors.tabcurrent, fg=colors.fg }), -- tab pages line, active tab page label
    Title({ bg=colors.none, fg=colors.none, gui='bold' }), -- titles for output from ":set all", ":autocmd" etc.
    Visual({ bg=colors.selection, fg=colors.none }), -- Visual mode selection
    VisualNOS({ bg=colors.selection, fg=colors.none }), -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg({ bg=colors.bg, fg=colors.orange }), -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu({ bg=colors.selection, fg=colors.none }), -- current match in 'wildmenu' completion

    Constant({ bg=colors.none, fg=colors.blue  }), -- (preferred) any constant
    String({ fg=colors.orange }), --   a string constant: "this is a string"
    Character({ fg=colors.orange }), --  a character constant: 'c', '\n'
    Number({ fg=colors.lightgreen }), --   a number constant: 234, 0xff
    Boolean({ fg=colors.blue}), --  a boolean constant: TRUE, false
    Float({ fg=colors.lightgreen }), --    a floating point constant: 2.3e10

    Identifier({ fg=colors.lightblue }), -- (preferred) any variable name
    Function({ fg=colors.yellow }), -- function name (also: methods for classes)

    Statement({ fg=colors.pink }), -- (preferred) any statement
    Conditional({ fg=colors.pink }), --  if, then, else, endif, switch, etc.
    Repeat({ fg=colors.pink }), --   for, do, while, etc.
    Label({ fg=colors.pink }), --    case, default, etc.
    Operator({ fg=colors.fg }), -- "sizeof", "+", "*", etc.
    Keyword({ fg=colors.pink }), --  any other keyword
    Exception({ fg=colors.pink }), --  try, catch, throw

    PreProc({ fg=colors.pink }), -- (preferred) generic Preprocessor
    Include({ fg=colors.pink }), --  preprocessor #include
    Define({ fg=colors.pink }), --   preprocessor #define
    Macro({ fg=colors.pink }), --    same as Define
    PreCondit({ fg=colors.pink }), --  preprocessor #if, #else, #endif, etc.

    Type({ fg=colors.blue }), -- (preferred) int, long, char, etc.
    StorageClass({ fg=colors.blue }), -- static, register, volatile, etc.
    Structure({ fg=colors.blue }), --  struct, union, enum, etc.
    Typedef({ fg=colors.blue }), --  A typedef

    Special({ fg=colors.yelloworange }), -- (preferred) any special symbol
    SpecialChar({ fg=colors.fg }), --  special character in a constant
    Tag({ fg=colors.fg }), --    you can use CTRL-] on this
    Delimiter({ fg=colors.fg }), --  character that needs attention
    SpecialComment({ fg=colors.green }), -- special things inside a comment
    Debug({ fg=colors.fg }), --    debugging statements

    Ignore ({ fg=colors.fg }), -- (preferred) left blank, hidden  |hl-Ignore|
    Error({ bg=colors.red, fg=colors.fg, gui='undercurl' }), -- (preferred) any erroneous construct
    Todo({ bg=colors.leftmid, fg=colors.none }), -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- Markdown
    markdownBold({ fg=colors.blue, gui='bold' }),
    markdownCode({ fg=colors.orange }),
    markdownRule({ fg=colors.blue, gui='bold' }),
    markdownCodeDelimiter({ fg=colors.orange }),
    markdownHeadingDelimiter({ fg=colors.blue }),
    markdownFootnote({ fg=colors.orange }),
    markdownFootnoteDefinition({ fg=colors.orange }),
    markdownUrl({ fg=colors.lightblue, gui='underline' }),
    markdownLinkText({ fg=colors.orange }),
    markdownEscape({ fg=colors.yelloworange }),

    -- json
    jsonKeyword({ fg=colors.lightblue }),
    jsonEscape({ fg=colors.yelloworange }),
    jsonNull({ fg=colors.blue }),
    jsonBoolean({ fg=colors.blue }),

    -- HTML
    htmlTag({ fg=colors.gray }),
    htmlEndTag({ fg=colors.gray }),
    htmlTagName({ fg=colors.blue }),
    htmlSpecialTagName({ fg=colors.blue }),
    htmlArg({ fg=colors.lightblue }),

    -- PHP
    phpStaticClasses({ fg=colors.bluegreen }),
    phpMethod({ fg=colors.yellow }),
    phpClass({ fg=colors.bluegreen }),
    phpFunction({ fg=colors.yellow }),
    phpInclude({ fg=colors.blue }),
    phpUseClass({ fg=colors.bluegreen }),
    phpRegion({ fg=colors.bluegreen }),
    phpMethodsVar({ fg=colors.lightblue }),

    -- CSS
    cssBraces({ fg=colors.fg }),
    cssInclude({ fg=colors.pink }),
    cssTagName({ fg=colors.yelloworange }),
    cssClassName({ fg=colors.yelloworange }),
    cssPseudoClass({ fg=colors.yelloworange }),
    cssPseudoClassId({ fg=colors.yelloworange }),
    cssPseudoClassLang({ fg=colors.yelloworange }),
    cssIdentifier({ fg=colors.yelloworange }),
    cssProp({ fg=colors.lightblue }),
    cssDefinition({ fg=colors.lightblue }),
    cssAttr({ fg=colors.orange }),
    cssAttrRegion({ fg=colors.orange }),
    cssColor({ fg=colors.orange }),
    cssFunction({ fg=colors.orange }),
    cssFunctionName({ fg=colors.orange }),
    cssVendor({ fg=colors.orange }),
    cssValueNumber({ fg=colors.orange }),
    cssValueLength({ fg=colors.orange }),
    cssUnitDecorators({ fg=colors.orange }),
    cssStyle({ fg=colors.lightblue }),
    cssImportant({ fg=colors.blue }),

    -- JavaScript
    jsVariableDef({ fg=colors.lightblue }),
    jsFuncArgs({ fg=colors.lightblue }),
    jsFuncBlock({ fg=colors.lightblue }),
    jsRegexpString({ fg=colors.lightred }),
    jsThis({ fg=colors.blue }),
    jsOperatorKeyword({ fg=colors.blue }),
    jsDestructuringBlock({ fg=colors.lightblue }),
    jsObjectKey({ fg=colors.lightblue }),
    jsGlobalObjects({ fg=colors.bluegreen }),
    jsModuleKeyword({ fg=colors.lightblue }),
    jsClassDefinition({ fg=colors.bluegreen }),
    jsClassKeyword({ fg=colors.blue }),
    jsExtendsKeyword({ fg=colors.blue }),
    jsExportDefault({ fg=colors.pink }),
    jsFuncCall({ fg=colors.yellow }),
    jsObjectValue({ fg=colors.lightblue }),
    jsParen({ fg=colors.lightblue }),
    jsObjectProp({ fg=colors.lightblue }),
    jsIfElseBlock({ fg=colors.lightblue }),
    jsParenIfElse({ fg=colors.lightblue }),
    jsSpreadOperator({ fg=colors.lightblue }),
    jsSpreadExpression({ fg=colors.lightblue }),

    -- Typescript
    typescriptLabel({ fg=colors.lightblue }),
    typescriptExceptions({ fg=colors.lightblue }),
    typescriptBraces({ fg=colors.fg }),
    typescriptEndColons({ fg=colors.lightblue }),
    typescriptParens({ fg=colors.fg }),
    typescriptDocTags({ fg=colors.blue }),
    typescriptDocComment({ fg=colors.bluegreen }),
    typescriptLogicSymbols({ fg=colors.lightblue }),
    typescriptImport({ fg=colors.pink }),
    typescriptBOM({ fg=colors.lightblue }),
    typescriptVariableDeclaration({ fg=colors.lightblue }),
    typescriptVariable({ fg=colors.blue }),
    typescriptExport({ fg=colors.pink }),
    typescriptAliasDeclaration({ fg=colors.bluegreen }),
    typescriptAliasKeyword({ fg=colors.blue }),
    typescriptClassName({ fg=colors.bluegreen }),
    typescriptAccessibilityModifier({ fg=colors.blue }),
    typescriptOperator({ fg=colors.blue }),
    typescriptArrowFunc({ fg=colors.blue }),
    typescriptMethodAccessor({ fg=colors.blue }),
    typescriptMember({ fg=colors.yellow }),
    typescriptTypeReference({ fg=colors.bluegreen }),
    typescriptDefault({ fg=colors.lightblue }),
    typescriptTemplateSB({ fg=colors.yelloworange }),
    typescriptArrowFuncArg({ fg=colors.lightblue }),
    typescriptParamImpl({ fg=colors.lightblue }),
    typescriptFuncComma({ fg=colors.lightblue }),
    typescriptCastKeyword({ fg=colors.lightblue }),
    typescriptCall({ fg=colors.blue }),
    typescriptCase({ fg=colors.lightblue }),
    typescriptReserved({ fg=colors.pink }),
    typescriptDecorator({ fg=colors.yellow }),
    typescriptPredefinedType({ fg=colors.bluegreen }),
    typescriptClassHeritage({ fg=colors.bluegreen }),
    typescriptClassExtends({ fg=colors.blue }),
    typescriptClassKeyword({ fg=colors.blue }),
    typescriptBlock({ fg=colors.lightblue }),
    typescriptDOMDocProp({ fg=colors.lightblue }),
    typescriptTemplateSubstitution({ fg=colors.lightblue }),
    typescriptClassBlock({ fg=colors.lightblue }),
    typescriptFuncCallArg({ fg=colors.lightblue }),
    typescriptIndexExpr({ fg=colors.lightblue }),
    typescriptConditionalParen({ fg=colors.lightblue }),
    typescriptArray({ fg=colors.yellow }),
    typescriptES6SetProp({ fg=colors.lightblue }),
    typescriptObjectLiteral({ fg=colors.lightblue }),
    typescriptTypeParameter({ fg=colors.bluegreen }),
    typescriptEnumKeyword({ fg=colors.blue }),
    typescriptEnum({ fg=colors.bluegreen }),
    typescriptLoopParen({ fg=colors.lightblue }),
    typescriptParenExp({ fg=colors.lightblue }),
    typescriptModule({ fg=colors.lightblue }),
    typescriptAmbientDeclaration({ fg=colors.blue }),
    -- typescriptModule({ fg=colors.blue }),
    typescriptFuncTypeArrow({ fg=colors.blue }),
    typescriptInterfaceHeritage({ fg=colors.bluegreen }),
    typescriptInterfaceName({ fg=colors.bluegreen }),
    typescriptInterfaceKeyword({ fg=colors.blue }),
    typescriptInterfaceExtends({ fg=colors.blue }),
    typescriptGlobal({ fg=colors.bluegreen }),
    typescriptAsyncFuncKeyword({ fg=colors.blue }),
    typescriptFuncKeyword({ fg=colors.blue }),
    typescriptGlobalMethod({ fg=colors.yellow }),
    typescriptPromiseMethod({ fg=colors.yellow }),

    -- XML
    xmlTag({ fg=colors.bluegreen }),
    xmlTagName({ fg=colors.bluegreen }),
    xmlEndTag({ fg=colors.bluegreen }),

    -- Ruby
    rubyClassNameTag({ fg=colors.bluegreen }),
    rubyClassName({ fg=colors.bluegreen }),
    rubyModuleName({ fg=colors.bluegreen }),
    rubyConstant({ fg=colors.bluegreen }),

    -- Golang
    goPackage({ fg=colors.blue }),
    goImport({ fg=colors.blue }),
    goVar({ fg=colors.blue }),
    goConst({ fg=colors.blue }),
    goStatement({ fg=colors.pink }),
    goType({ fg=colors.bluegreen }),
    goSignedInts({ fg=colors.bluegreen }),
    goUnsignedInts({ fg=colors.bluegreen }),
    goFloats({ fg=colors.bluegreen }),
    goComplexes({ fg=colors.bluegreen }),
    goBuiltins({ fg=colors.yellow }),
    goBoolean({ fg=colors.blue }),
    goPredefinedIdentifiers({ fg=colors.blue }),
    goTodo({ fg=colors.green }),
    goDeclaration({ fg=colors.blue }),
    goDeclType({ fg=colors.blue }),
    goTypeDecl({ fg=colors.blue }),
    goTypeName({ fg=colors.bluegreen }),
    goVarAssign({ fg=colors.lightblue }),
    goVarDefs({ fg=colors.lightblue }),
    goReceiver({ fg=colors.fg }),
    goReceiverType({ fg=colors.fg }),
    goFunctionCall({ fg=colors.yellow }),
    goMethodCall({ fg=colors.yellow }),
    goSingleDecl({ fg=colors.lightblue }),

    -- Python
    pythonStatement({ fg=colors.blue }),
    pythonOperator({ fg=colors.blue }),
    pythonException({ fg=colors.pink }),
    pythonExClass({ fg=colors.bluegreen }),
    pythonBuiltinObj({ fg=colors.lightblue }),
    pythonBuiltinType({ fg=colors.bluegreen }),
    pythonBoolean({ fg=colors.blue }),
    pythonNone({ fg=colors.blue }),
    pythonTodo({ fg=colors.blue }),
    pythonClassVar({ fg=colors.blue }),
    pythonClassDef({ fg=colors.bluegreen }),

    -- TeX
    texStatement({ fg=colors.blue }),
    texBeginEnd({ fg=colors.yellow }),
    texBeginEndName({ fg=colors.lightblue }),
    texOption({ fg=colors.lightblue }),
    texBeginEndModifier({ fg=colors.lightblue }),
    texDocType({ fg=colors.pink }),
    texDocTypeArgs({ fg=colors.lightblue }),

    -- Git
    gitcommitHeader({ fg=colors.gray }),
    gitcommitOnBranch({ fg=colors.gray }),
    gitcommitBranch({ fg=colors.pink }),
    gitcommitComment({ fg=colors.gray }),
    gitcommitSelectedType({ fg=colors.green }),
    gitcommitSelectedFile({ fg=colors.green }),
    gitcommitDiscardedType({ fg=colors.red }),
    gitcommitDiscardedFile({ fg=colors.red }),
    gitcommitOverflow({ fg=colors.red }),
    gitcommitSummary({ fg=colors.pink }),
    gitcommitBlank({ fg=colors.pink }),

    -- Lua
    luaFuncCall({ fg=colors.yellow }),
    luaFuncArgName({ fg=colors.lightblue }),
    luaFuncKeyword({ fg=colors.pink }),
    luaLocal({ fg=colors.pink }),
    luaBuiltIn({ fg=colors.blue }),

    -- SQL
    sqlKeyword({ fg=colors.pink }),
    sqlFunction({ fg=colors.yelloworange }),
    sqlOperator({ fg=colors.pink }),

    -- YAML
    yamlKey({ fg=colors.blue }),
    yamlConstant({ fg=colors.blue }),
  }
end)

return theme

-- vi:nowrap
