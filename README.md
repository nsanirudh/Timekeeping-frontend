# Jiffi

* Time-management application with assistive data analysis. This repo contains frontend-code.

## Getting Started

Resources:

* [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
* [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
* [online documentation](https://flutter.dev/docs)
--------------------
# Git Commands to use

### Initial Repo Setup

```cmd
git clone https://github.com/nsanirudh/Jiffi-App.git
git remote -v
git branch
```

* To start a new branch and move to it and to create a pr
```cmd
git checkout -b branch-name
git push https://your-repo 
```

* Get new changes
```cmd
git checkout -b "branch-name"
git pull upstream development
```

* Commit Changes
```cmd
git stash
git add .
git commit -m "Your Commit Message"
git push upstream development
```

# Running the app
Steps:
* Check SDK manager -- update to latest SDK
* Check AVD manager -- update AVD details (maybe reinstall)
* edit kotlin version to latest if facing build issues

to build apk:
```
flutter build apk
``` 

* choose AVD device and run 

## Flutter Quick commands
* Access the right-panel vertical bar with 
    * flutter inspector
    * flutter outline
    * flutter performance
* hot reload - ctrl + \
* hot restart - ctrl + shift + \
* refactoring options -  alt + enter
* go to widget source - ctrl + b
* view widget constructor - ctrl + shift + I
* select entire widget - ctrl + w 
* fix indentation - ctrl + alt + l