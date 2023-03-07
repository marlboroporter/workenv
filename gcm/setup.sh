pkgmgr=brew
appdef="git credential manager"
install(){
    #https://github.com/GitCredentialManager/git-credential-manager/blob/release/docs/install.md
    brew tap microsoft/git
    brew install --cask git-credential-manager-core
}
