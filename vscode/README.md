# References


# Keybindings 
* Default
  - [Cmd+K+R](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)
  - [Saved](etc/editor/keyboard-shortcuts-macos.pdf)
* Current
  - *Cmd+K+S*    

* Memo 

Keys              | Function            
------------------|---------------------------
Cmd+B             | Toggle Explorer 
Cmd+B             | Bold in Markdown Snippet view
Sft+Cmd+          | Switch focus between explorer and editor 




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

# Metals
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

# Vscode vim
- Settings & shortcuts
-  macOS: $HOME/Library/Application\ Support/Code/User/settings.json
-  macOS: $HOME/Library/Application\ Support/Code/User/keybindings.json


# Tasks
Task | Repeat | Date Init | Date Due | Status | Notes
---|---|---|---|---|---
dothis | m | 20221120 |  | o |
|||||





