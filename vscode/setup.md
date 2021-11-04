# gcc setup

```bash
brew install gcc
```

```
ln -s /usr/local/bin/g++-9 /usr/local/bin/g++
```

<kbd>Command</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> 

&#8594; C/Cpp: Edit configurations

```json
{
    "configurations": [
        {
            "name": "Mac",
            "includePath": [
                "${workspaceFolder}/**",
                "/usr/local/include/**"
            ],
            "defines": [],
            "macFrameworkPath": [
                "/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk/System/Library/Frameworks"
            ],
            "compilerPath": "/usr/local/bin/g++",
            "cStandard": "c11",
            "cppStandard": "c++14",
            "intelliSenseMode": "gcc-x64"
        }
    ],
    "version": 4
}
```

User Snippets
- [C++]((user_snippets/cpp.json))

# Terminal Swap Hotkey

<kbd>Command</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>

&#8594; Preferences: Open Keyboard Shortcuts File

```json
{ "key": "cmd+`", "command": "workbench.action.terminal.focus"},
{ "key": "cmd+`", "command": "workbench.action.focusActiveEditorGroup", "when": "terminalFocus"}
```

Use <kbd>Command</kbd>+<kbd>`</kbd> to switch between terminal and editor.
