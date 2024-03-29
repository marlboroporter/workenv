## References
## Setting
* theme: preferences -> workbench color theme -> select xxx_light_xxx or xxx_dark_xxx   
## Keybindings 
* Default
  - [Cmd+K+R](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)
  - [Saved](etc/editor/keyboard-shortcuts-macos.pdf)
* Current
  - *Cmd+K+S*

* Memo 

|Domain     | extension      |  Keys/menu        | Function 
|-----------|----------------|-------------------|---------------------------
|Explorer   |                |Cmd+B              | Toggle Explorer 
|           |                |Cmd+B              | Bold in Markdown Snippet view
|Explorer   | Nerdtree       |^N                 | To goggle tree panel 
|           |                |Sht+Cmd+B          | build from command line (c++ etc)
|           |                |Sft+Cmd+           | Switch focus between explorer and editor 
|           |                |Cmd+B              | Toggle Explorer 
|           |                |Sft+Cmd+           | Switch focus between explorer and editor 

|Domain     | extension      |  Keys/menu        | Function 
|-----------|----------------|-------------------|---------------------------
|Json       |mohsen1.prettify-json| menu         | tree view





# [Using Clang in Visual Studio Code](https://code.visualstudio.com/docslcpp/config-clang-mac)
  - See setup.sh#samples()
  - .vscode
    - task.json -- build file
    - launch.json -- run/debug config -- created by "Add Debug Configuration"
      - choose "clang++ build and debug active file" 
    - c_cpp_properties -- details but how to invoke -- created by 
      - "C/C++: Edit Configurations (UI)"
          - "Mac" -- "Add Configuration" 

    - launch.json and task.json entries need to match proper
    - if not compile, launch.json need to change
    - "--std=c++17" need to added manually to task.json to compile
    - launch.json apperance does not help compile

## Metals
* Install extension 
  * Install extension "Scala Metals)", choice of "pre-release" from extension page
  * Uninstall "Scala Language Server" & "Scala (sbt)"
* Import build
  * First time open in workspace
  * Changed source
  * From P
* Customer sbt launcher
* Run Docker -- search P for docker
* ignore
  .metals/
  .bloop/
  .ammonite/
  metals.sbt
* Go parent code lenses
  * "metals.superMethodLensesEnabled"
  * "Metals: Reveal super method hierachy"   
  * Used with "Metals Quick Pick" extension

## Vscode vim
- Settings & shortcuts
-  macOS: $HOME/Library/Application\ Support/Code/User/settings.json
-  macOS: $HOME/Library/Application\ Support/Code/User/keybindings.json


## Snippets
```markdown
  # Tasks
  Task | Repeat | Date Init | Date Due | Status | Notes
  ---|---|---|---|---|---
  dothis | m | 20221120 |  | o |
  |||||
```
## Extension
* [Create extension pack](https://code.visualstudio.com/api/get-started/your-first-extension)
    * install
        - npm install -g yo generator-code 
        - npm install -g vsce 
    * create extension zip 
        - yo code
        - cd extensionDirCreated;  vsce 
        - jiecodeenv-0.0.1.vsix
    * install extension
        - from ui -> extension -> ... -> install from VSIX -> pick jiecodeenv-0.0.1.vsix
        
## Variables
* [Now it is possbile](https://stackoverflow.com/questions/58847063/variables-in-vs-code-settings-how)
* [Define variable](https://stackoverflow.com/questions/44303316/vscode-defining-own-variables-in-tasks-json)



