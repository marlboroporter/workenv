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
