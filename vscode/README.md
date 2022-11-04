# [Using Clang in Visual Studio Code](https://code.visualstudio.com/docs/cpp/config-clang-mac)
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
*

# Vscode vim
  * mac

    $ defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
    $ defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
    $ defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false         # For VS Codium
    $ defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
    $ defaults delete -g ApplePressAndHoldEnabled





