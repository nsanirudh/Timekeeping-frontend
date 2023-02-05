# jiffi

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

--------------------
# basic git Commands to use

### Initial Repo Setup
* git clone https://github.com/nsanirudh/Jiffi-App.git
* git remote add upstream https://github.com/timekeeper212/Jiffi-App.git

### Git Misc
* git remote -v
* git branch
* git stash

### Get new changes
* git checkout -b "branch-name"
* git pull upstream development

### Commit Chnages
* git add .
* git commit -m "Your Commit Message"
* git push upstream development

# Running the app

* Check SDK manager -- update to latest SDK
* Check AVD manager -- update AVD details (maybe reinstall)
* edit kotlin version to latest if facing build issues

to build apk:
```
flutter build apk
``` 

* choose AVD device and run 