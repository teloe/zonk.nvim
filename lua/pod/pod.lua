local lush = require('lush')
local hsl = lush.hsl

-- Color definitions
local c = {
    -- bg = "#282c34",
    -- bg = "#1B2029",
    bg = "#21252b",
    bg1 = "#31353f",
    bg2 = "#24282f",
    -- bg2 = "#262626",
    bg_d = "#1b2029",
    -- bg_d = "#222222",
    strng1 = "#70865E",
    cmmmnt = "#5c6370",
    greencmnt = "#5D6B61",
    imprt = "#7F7F7F",
    -- bg = "#2a2a2a",
    fg = "#e1e1e1",
    fg2 = "#bababa",
    fg1 = "#ABB7C4",
    white= "#ffffff",
    lineNrbg = "#4F4C4C",
    lineNrfg = "#808080",
    cmnt = "#586469",
    blue = "#7D83F4",
    blue0 = "#8283AD",
    blue1 = "#8AA6EB",
    blue2 = "#A8B4BA",
    soblue = "#90ABCB",
    twiliblue = '#7886A3',
    purple = "#A1A1F8",
    purple1 = "#5f5f87",
    purple2 = "#8E6F89",
    purple3 = "#5B5460",
    twilipurple = '#97869B',
    twilibrown = '#A78A61',
    sopurple = "#75759f",
    search  =  '#8283AD',
    yellow = "#CBCA67",
    brown = "#B8A47A",
    brown1 = "#9a8f89",
    cyan = "#73C1DB",
    obcyan = "#34E2E2",
    orange = "#DBA251",
    soorange = "#E39858",
    green = "#6BF549",
    sogreen = "#B7BD73",
    keywrd = "#967372",
    keywrd1 = "#93746F",
    darkgreen = "#4F86A9",
    darkgreen1 = "#5f8787",
    red = "#A14A60",
    red1 = "#9d1c1c",
    ffred = "#E36863",
    visual = "#574B5A",
    vis1 = "#2E3845",
    nontxt = "#423F3F",
    statusln = '#353535',
    folded = '#161616',
    folded1 = "#1d1f23",
    gray1 = '#707070',
    gray2 = '#444444',
    gray3 = '#212121',
    diffa = '#406742',
    diffc = '#466177',
    diffd = '#82505E',
    difft = '#5D809B',

    -- vividchalk
    purpcmnt = "#9933cc",
    pmenubg = "#000099",
    pmenusel = "#5555ff",
    matchp = "#1100AA",
    const = "#339999",
    type = "#AAAA77",
    regexp = "#44B4CC",
    func = "#DDE93D",
    strng = "#66FF00",
    -- distinguished
    disttype = "#5f87af",
    distconst = "#af875f",
    -- code-dark
    cdstring = "#ce9178",
    -- modus
    import = '#F09E7E',
    mdstring = '#82A7F8',
    onegreen = '#6AE24D',
    oneblue = '#6c81f1',
    -- onedark
    odcyan = '#56b6c2',

}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- NvimTreeRootFolder  { fg = c.search },
    -- NvimTreeSpecialFile  { fg = c.search, gui = "underline, bold" },
    NvimTreeNormal { bg = c.bg2 },
    NvimTreeWinSeparator { fg = c.bg, bg = "none" },

    GitSignsAdd     { fg = c.diffa },
    GitGutterAdd    { GitSignsAdd },
    GitSignsChange  { fg = c.diffc },
    GitGutterChange { GitSignsChange },
    GitSignsDelete  { fg = c.diffd },
    GitGutterDelete { GitSignsDelete },

    CmpItemKind { fg = c.fg },
    --
    -- ColorColumn  { }, -- Columns set with 'colorcolumn'
    -- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = c.fg, gui = "bold" }, -- Directory names (and other special names in listings)
    DiffAdd      { fg = c.diffa }, -- Diff mode: Added line |diff.txt|
    DiffChange   { fg = c.diffc }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { fg = c.diffd }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { fg = c.difft }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = c.gray2 }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg     { fg = c.red }, -- Error messages on the command line
    VertSplit    { bg = "none", fg = c.gray3 }, -- Column separating vertically split windows
    Folded       { bg = c.bg_d, fg = c.cmnt }, -- Line used for closed folds
    FoldColumn   { fg = c.cmnt }, -- 'foldcolumn'
    SignColumn   { bg = "none" }, -- Column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { bg = "none", fg = c.lineNrfg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = c.lineNrfg }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = c.fg, bg = c.matchp }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    NonText      { fg = c.bg1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { bg = c.bg, fg = c.fg }, -- Normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { bg = c.bg_d }, -- Popup menu: Normal item.
    PmenuSel     { bg = c.bg2, fg = c.white }, -- Popup menu: Selected item.
    PmenuSbar    { bg = c.gray2 }, -- Popup menu: Scrollbar.
    PmenuThumb   { bg = c.gray1 }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { Folded }, -- Status line of current window
    -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- Tab pages line, not active tab page label
    -- TabLineFill  { }, -- Tab pages line, where there are no labels
    -- TabLineSel   { }, -- Tab pages line, active tab page label
    Title        { fg = c.odcyan }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = c.visual, fg = "none" }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- Warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = c.purpcmnt }, -- Any comment

    Constant       { fg = c.fg }, -- (*) Any constant
    String         { fg = "#998f84" }, --   A string constant: "this is a string"
    -- String         { fg = c.strng1 }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    Number         { fg =  "#A46321" }, --   A number constant: 234, 0xff
    Boolean        { fg = "#A46321" }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier     { fg = c.fg1 }, -- (*) Any variable name
    Function       { fg = c.white }, --   Function name (also: methods for classes)

    Statement      { fg = "#aeee00", gui = "bold" }, -- (*) Any statement
    Conditional    { fg =  "#aeee00" }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator       { fg = '#aeee00' }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = "#A46321", gui = "bold" }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc        { fg = c.search }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- Type           { fg = "#aeee00" }, -- (*) int, long, char, etc.
    -- Type           { fg = "#A46321" }, -- (*) int, long, char, etc.
    Type           { fg = c.fg }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { Statement }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter      { fg = "#aeee00" }, --   Character that needs attention
    htmlTag        { Delimiter }, --    debugging statements
    htmlEndTag     { Delimiter }, --    debugging statements
    SpecialComment { fg = c.cmmmnt }, --   Special things inside a comment (e.g. '\n')
    Debug          { SpecialComment }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = c.red }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = c.difft } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { bg = c.bg2, fg = c.difft } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { fg = c.difft, gui = "undercurl" } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial   { } , -- Special characters.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    -- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- TSField              { } , -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    -- TSFunction           { } , -- Function calls and definitions.
    -- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword            { fg = "#A46321" } , -- Keywords that don't fit into other categories.
    -- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             { } , -- Method calls and definitions.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    -- TSParameter          { } , -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
    -- TSProperty           { } , -- Same as `TSField`.
    -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    -- TSStrong             { } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
    -- TSVariable           { } , -- Variable names that don't fit into other categories.
    -- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap

