# hammerspoon-DefaultKeyBinding
Create DefaultKeyBinding.dict with Hammerspoon

## Usage example
```lua
local DefaultKeyBinding = hs.loadSpoon('DefaultKeyBinding')
local m = DefaultKeyBinding.methods
DefaultKeyBinding:writeBinding({
    { { 'home' }, { m.moveToBeginningOfLine } },
    { { 'end' }, { m.moveToEndOfLine } },
    { { 'shift', 'home' }, { m.moveToBeginningOfLineAndModifySelection } },
    { { 'shift', 'end' }, { m.moveToEndOfLineAndModifySelection } },
    { { 'ctrl', 'home' }, { m.moveToBeginningOfDocument } },
    { { 'ctrl', 'end' }, { m.moveToEndOfDocument } },
    { { 'ctrl', 'shift', 'home' }, { m.moveToBeginningOfDocumentAndModifySelection } },
    { { 'ctrl', 'shift', 'end' }, { m.moveToEndOfDocumentAndModifySelection } },
    { { 'pageup' }, { m.pageUp } },
    { { 'pagedown' }, { m.pageDown } },
    { { 'shift', 'pageup' }, { m.pageUpAndModifySelection } },
    { { 'shift', 'pagedown' }, { m.pageDownAndModifySelection } },
    { { 'ctrl', 'x' }, {
        { { 'ctrl', 'x' }, { m.insertText, '"ctrl-x ctrl-x"' } },
    } },
})
```

## References
* https://web.archive.org/web/20161220060333/http://osxnotes.net/keybindings.html
* https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/EventOverview/TextDefaultsBindings/TextDefaultsBindings.html
* https://developer.apple.com/documentation/appkit/nsstandardkeybindingresponding
* https://ss64.com/osx/syntax-keybindings.html
