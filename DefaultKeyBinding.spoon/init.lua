--- === DefaultKeyBinding ===
---
--- Create DefaultKeyBinding.dict with Hammerspoon
--- Check [this](https://web.archive.org/web/20161220060333/http://osxnotes.net/keybindings.html) about DefaultKeyBinding.dict
---
--- Usage example:
--- ```lua
--- local DefaultKeyBinding = hs.loadSpoon('DefaultKeyBinding')
--- local m = DefaultKeyBinding.methods
--- DefaultKeyBinding:writeBinding({
---     { { 'home' }, { m.moveToBeginningOfLine } },
---     { { 'end' }, { m.moveToEndOfLine } },
---     { { 'shift', 'home' }, { m.moveToBeginningOfLineAndModifySelection } },
---     { { 'shift', 'end' }, { m.moveToEndOfLineAndModifySelection } },
---     { { 'ctrl', 'home' }, { m.moveToBeginningOfDocument } },
---     { { 'ctrl', 'end' }, { m.moveToEndOfDocument } },
---     { { 'ctrl', 'shift', 'home' }, { m.moveToBeginningOfDocumentAndModifySelection } },
---     { { 'ctrl', 'shift', 'end' }, { m.moveToEndOfDocumentAndModifySelection } },
---     { { 'pageup' }, { m.pageUp } },
---     { { 'pagedown' }, { m.pageDown } },
---     { { 'shift', 'pageup' }, { m.pageUpAndModifySelection } },
---     { { 'shift', 'pagedown' }, { m.pageDownAndModifySelection } },
---     { { 'ctrl', 'x' }, {
---         { { 'ctrl', 'x' }, { m.insertText, '"ctrl-x ctrl-x"' } },
---     } },
--- })
--- ```
---
--- Download: [https://github.com/dplusic/hammerspoon-DefaultKeyBinding/releases/latest/download/DefaultKeyBinding.spoon.zip](https://github.com/dplusic/hammerspoon-DefaultKeyBinding/releases/latest/download/DefaultKeyBinding.spoon.zip)

local obj = {}
obj.__index = obj
obj.__name = 'DefaultKeyBinding.spoon'

obj.name = 'DefaultKeyBinding'
obj.version = '0.0.1'
obj.author = 'Dongwoon Son <dplusic@gmail.com>'
obj.license = 'MIT - https://opensource.org/licenses/MIT'
obj.homepage = 'https://github.com/dplusic/hammerspoon-DefaultKeyBinding'

--- DefaultKeyBinding.keyCodes
--- Constant
--- Key code mapping
obj.keyCodes = {
    tab = '\\t',
    enter = '\\n',
    ['return'] = '\\r',
    escape = '\\U001b',
    delete = '\\U007f',
    up = '\\Uf700',
    down = '\\Uf701',
    left = '\\Uf702',
    right = '\\Uf703',
    f1 = '\\Uf704',
    f2 = '\\Uf705',
    f3 = '\\Uf706',
    f4 = '\\Uf707',
    f5 = '\\Uf708',
    f6 = '\\Uf709',
    f7 = '\\Uf70a',
    f8 = '\\Uf70b',
    f9 = '\\Uf70c',
    f10 = '\\Uf70d',
    f11 = '\\Uf70e',
    f12 = '\\Uf70f',
    f13 = '\\Uf710',
    f14 = '\\Uf711',
    f15 = '\\Uf712',
    f16 = '\\Uf713',
    f17 = '\\Uf714',
    f18 = '\\Uf715',
    f19 = '\\Uf716',
    f20 = '\\Uf717',
    forwarddelete = '\\Uf728',
    home = '\\Uf729',
    ['end'] = '\\Uf72b',
    pageup = '\\Uf72c',
    pagedown = '\\Uf72d',
    clear = '\\Uf739',

    ctrl = '^',
    alt = '~',
    shift = '$',
    cmd = '@',

    space = ' ',
    pad0 = '#0',
    pad1 = '#1',
    pad2 = '#2',
    pad3 = '#3',
    pad4 = '#4',
    pad5 = '#5',
    pad6 = '#6',
    pad7 = '#7',
    pad8 = '#8',
    pad9 = '#9',
    ['pad.'] = '#.',
    ['pad*'] = '#*',
    ['pad+'] = '#+',
    ['pad/'] = '#/',
    ['pad-'] = '#-',
    ['pad='] = '#=',
    ['pad,'] = '#,',
}

--- DefaultKeyBinding.methods
--- Constant
--- A list of action methods which can be bound
obj.methods = {
    capitalizeWord = 'capitalizeWord:',
    centerSelectionInVisibleArea = 'centerSelectionInVisibleArea:',
    deleteBackward = 'deleteBackward:',
    deleteBackwardByDecomposingPreviousCharacter = 'deleteBackwardByDecomposingPreviousCharacter:',
    deleteForward = 'deleteForward:',
    deleteToBeginningOfLine = 'deleteToBeginningOfLine:',
    deleteToBeginningOfParagraph = 'deleteToBeginningOfParagraph:',
    deleteToEndOfLine = 'deleteToEndOfLine:',
    deleteToEndOfParagraph = 'deleteToEndOfParagraph:',
    deleteToMark = 'deleteToMark:',
    deleteWordBackward = 'deleteWordBackward:',
    deleteWordForward = 'deleteWordForward:',
    insertBacktab = 'insertBacktab:',
    insertDoubleQuoteIgnoringSubstitution = 'insertDoubleQuoteIgnoringSubstitution:',
    insertNewline = 'insertNewline:',
    insertNewlineIgnoringFieldEditor = 'insertNewlineIgnoringFieldEditor:',
    insertSingleQuoteIgnoringSubstitution = 'insertSingleQuoteIgnoringSubstitution:',
    insertTab = 'insertTab:',
    insertTabIgnoringFieldEditor = 'insertTabIgnoringFieldEditor:',
    insertText = 'insertText:',
    lowercaseWord = 'lowercaseWord:',
    moveBackward = 'moveBackward:',
    moveBackwardAndModifySelection = 'moveBackwardAndModifySelection:',
    moveDown = 'moveDown:',
    moveDownAndModifySelection = 'moveDownAndModifySelection:',
    moveForward = 'moveForward:',
    moveForwardAndModifySelection = 'moveForwardAndModifySelection:',
    moveLeft = 'moveLeft:',
    moveLeftAndModifySelection = 'moveLeftAndModifySelection:',
    moveParagraphBackwardAndModifySelection = 'moveParagraphBackwardAndModifySelection:',
    moveParagraphForwardAndModifySelection = 'moveParagraphForwardAndModifySelection:',
    moveRight = 'moveRight:',
    moveRightAndModifySelection = 'moveRightAndModifySelection:',
    moveToBeginningOfDocument = 'moveToBeginningOfDocument:',
    moveToBeginningOfDocumentAndModifySelection = 'moveToBeginningOfDocumentAndModifySelection:',
    moveToBeginningOfLine = 'moveToBeginningOfLine:',
    moveToBeginningOfLineAndModifySelection = 'moveToBeginningOfLineAndModifySelection:',
    moveToBeginningOfParagraph = 'moveToBeginningOfParagraph:',
    moveToBeginningOfParagraphAndModifySelection = 'moveToBeginningOfParagraphAndModifySelection:',
    moveToEndOfDocument = 'moveToEndOfDocument:',
    moveToEndOfDocumentAndModifySelection = 'moveToEndOfDocumentAndModifySelection:',
    moveToEndOfLine = 'moveToEndOfLine:',
    moveToEndOfLineAndModifySelection = 'moveToEndOfLineAndModifySelection:',
    moveToEndOfParagraph = 'moveToEndOfParagraph:',
    moveToEndOfParagraphAndModifySelection = 'moveToEndOfParagraphAndModifySelection:',
    moveToLeftEndOfLine = 'moveToLeftEndOfLine:',
    moveToLeftEndOfLineAndModifySelection = 'moveToLeftEndOfLineAndModifySelection:',
    moveToRightEndOfLine = 'moveToRightEndOfLine:',
    moveToRightEndOfLineAndModifySelection = 'moveToRightEndOfLineAndModifySelection:',
    moveUp = 'moveUp:',
    moveUpAndModifySelection = 'moveUpAndModifySelection:',
    moveWordBackward = 'moveWordBackward:',
    moveWordBackwardAndModifySelection = 'moveWordBackwardAndModifySelection:',
    moveWordForward = 'moveWordForward:',
    moveWordForwardAndModifySelection = 'moveWordForwardAndModifySelection:',
    moveWordLeft = 'moveWordLeft:',
    moveWordLeftAndModifySelection = 'moveWordLeftAndModifySelection:',
    moveWordRight = 'moveWordRight:',
    moveWordRightAndModifySelection = 'moveWordRightAndModifySelection:',
    pageDown = 'pageDown:',
    pageDownAndModifySelection = 'pageDownAndModifySelection:',
    pageUp = 'pageUp:',
    pageUpAndModifySelection = 'pageUpAndModifySelection:',
    scrollLineDown = 'scrollLineDown:',
    scrollLineUp = 'scrollLineUp:',
    scrollPageDown = 'scrollPageDown:',
    scrollPageUp = 'scrollPageUp:',
    scrollToBeginningOfDocument = 'scrollToBeginningOfDocument:',
    scrollToEndOfDocument = 'scrollToEndOfDocument:',
    selectAll = 'selectAll:',
    selectLine = 'selectLine:',
    selectParagraph = 'selectParagraph:',
    selectToMark = 'selectToMark:',
    selectWord = 'selectWord:',
    setMark = 'setMark:',
    swapWithMark = 'swapWithMark:',
    transpose = 'transpose:',
    uppercaseWord = 'uppercaseWord:',
    yank = 'yank:',
    copy = 'copy:',
    cut = 'cut:',
    delete = 'delete:',
    paste = 'paste:',
    pasteAsPlainText = 'pasteAsPlainText:',
    redo = 'redo:',
    undo = 'undo:',
    yankAndSelect = 'yankAndSelect:',
}

--- DefaultKeyBinding.keyBindingsDir
--- Constant
--- Directory of the DefaultKeyBinding.dict
obj.keyBindingsDir = os.getenv('HOME') .. '/Library/KeyBindings/'

--- DefaultKeyBinding.defaultKeyBindingPath
--- Constant
--- Full path to the DefaultKeyBinding.dict
obj.defaultKeyBindingPath = obj.keyBindingsDir .. 'DefaultKeyBinding.dict'

--- DefaultKeyBinding.indentSize
--- Constant
--- Indent size of the DefaultKeyBinding.dict
obj.indentSize = 2

--- DefaultKeyBinding.initialized
--- Constant
--- `false` if an error occurs during initialization
obj.initialized = false

local logger = hs.logger.new(obj.__name, 'warning')

local defaultKeyBindingNote = '// Generated by DefaultKeyBinding.spoon'

function obj:init()
    local firstLine

    local f = io.open(self.defaultKeyBindingPath)
    if f ~= nil then
        firstLine = f:read()
        f:close()
    end

    if firstLine ~= nil and firstLine ~= defaultKeyBindingNote then
        local message = '"' .. self.defaultKeyBindingPath .. '" already exists. Please back up and remove the file.'
        hs.notify.new({
            title = '',
            subTitle = self.__name,
            informativeText = message,
            withdrawAfter = 0,
        }):send()
        logger.e(self.__name, message)
        return
    end

    os.remove(self.defaultKeyBindingPath)

    self.initialized = true
end

local function putKeys(builder, keys)
    for _, key in pairs(keys) do
        local keyCode = obj.keyCodes[key]
        table.insert(builder, keyCode ~= nil and keyCode or key)
    end
end

local function putCommand(builder, command)
    local commandLength = #command

    table.insert(builder, '(')

    if commandLength > 0 then
        table.insert(builder, command[1])

        for i = 2, commandLength do
            table.insert(builder, ', ')
            table.insert(builder, command[i])
        end
    end

    table.insert(builder, ')')
end

local unitIndent = string.rep(' ', obj.indentSize)

local function putBindings(builder, indentLevel, bindings)
    local indent = string.rep(unitIndent, indentLevel)

    table.insert(builder, '{\n')

    for _, binding in pairs(bindings) do
        local keys = binding[1]
        local commandOrSubBinding = binding[2]

        table.insert(builder, indent)
        table.insert(builder, unitIndent)
        table.insert(builder, '"')
        putKeys(builder, keys)
        table.insert(builder, '" = ')

        if type(commandOrSubBinding[1]) == 'table' then
            putBindings(builder, indentLevel + 1, commandOrSubBinding)
        else
            putCommand(builder, commandOrSubBinding)
        end

        table.insert(builder, ';\n')
    end

    table.insert(builder, indent)
    table.insert(builder, '}')
end

local function buildContent(bindings)
    local builder = { defaultKeyBindingNote, '\n' }
    putBindings(builder, 0, bindings)
    table.insert(builder, '\n')
    return table.concat(builder)
end

--- DefaultKeyBinding:writeBinding(bindings)
--- Method
--- Write DefaultKeyBinding.dict
---
--- Parameters:
---  * bindings - Key binding list. Check the usage example.
---
--- Returns:
---  * The DefaultKeyBinding object
function obj:writeBinding(bindings)
    if self.initialized == false then
        return self
    end

    local content = buildContent(bindings)

    hs.fs.mkdir(self.keyBindingsDir)
    local f = io.open(self.defaultKeyBindingPath, 'w')
    f:write(content)
    f:close()

    return self
end

--- DefaultKeyBinding:removeBinding()
--- Method
--- Remove DefaultKeyBinding.dict
---
--- Returns:
---  * The DefaultKeyBinding object
function obj:removeBinding()
    if self.initialized == false then
        return self
    end

    os.remove(self.defaultKeyBindingPath)
    hs.fs.rmdir(self.keyBindingsDir)

    return self
end

return obj
