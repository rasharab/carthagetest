# TimeTracker-iOS

[![BuddyBuild](https://dashboard.buddybuild.com/api/statusImage?appID=573935866a416901003a6a2b&branch=master&build=latest)](https://dashboard.buddybuild.com/apps/573935866a416901003a6a2b/build/latest)

## Setup

This project assumes you have [homebrew](http://brew.sh/) installed and updated (`brew update`).

### Git LFS

This project uses [Git LFS](https://git-lfs.github.com/) to store binary files. To use Git LFS you need to the latest git and git-lfs installed. To install it, run `brew update && brew install git git-lfs`.

If you are about to add a binary file, first check the contents of `.gitattributes` and see if there already is a pattern for the type of binary file you are adding. If there isn't one, add one. For example, to use Git LFS for all psd files, run `git lfs track "*.psd"`.

Once this is done, continue using git as usual even for binary files (i.e. `git add`, `git commit`, `git push`, `git fetch`, etc.).

### Dependency Management

This project uses [Carthage](https://github.com/Carthage/Carthage) for dependency management.

To set it up, first install Carthage: `brew update && brew install carthage`.

Then, run `carthage bootstrap`. This will result in dependencies being fetched and built. Continue using Xcode as you normally would (i.e., open the .xcodeproj file, no need for a workspace, etc.)

If you want to add a dependency, read the [Carthage documentation](https://github.com/Carthage/Carthage).

Handy way to speed up carthage updates: `carthage update --platform ios --no-use-binaries`. `--platform ios` builds on iOS schemes, saving a bunch of time. The `--no-use-binaries` is to hopefully work around this [major issue](https://github.com/Carthage/Carthage/issues/924), which you should probably know about.


### Swiftlint

This project uses [Swiftlint](https://github.com/realm/SwiftLint) to ensure code style is maintained.

To set it up, `brew update && brew install swiftlint`. Swiftlint updates regularly, so ensure you run `brew update && brew upgrade` at least once every two weeks to get the latest swiftlint.

It is also recommended that you install [SwiftLintXcode](https://github.com/ypresto/SwiftLintXcode) through [Alcatraz](http://alcatraz.io). This plugin will autocorrect some errors generated by swiftlint on save. You can also trigger it manually on a file.

All PRs that get filed must pass `swiftlint` without any warnings or errors.


### Chisel

It is recommended that you set up [Chisel](https://github.com/facebook/chisel) when you work on this project.

Chisel is a set of lldb commands that make debugging iOS apps easier. To install, `brew update && brew install chisel`. Follow the instructions (you will have to copy some stuff into `~.lldbinit`).

For more, see the [Chisel Readme](https://github.com/facebook/chisel/blob/master/README.md).


## Style

We will generally follow the [Github Swift Style Guide](https://github.com/github/swift-style-guide). Exceptions will be noted below:

- Use 4 spaces to indent, not tabs
- Avoid "stringly typed code" whenever possible


### R.swift

This project uses [R.swift](https://github.com/mac-cain13/R.swift) to ensure strong type checking for resources (images, fonts, etc.). It is therefore expected that you always refer to resources using strongly typed references in R.swift, and not the usual Cocoa way.

For example:

Do not do: `let settingsIcon = UIImage(named: "settings-icon")`. Instead do: `let settingsIcon = R.image.settingsIcon()`.

For more examples, see [R.swift examples](https://github.com/mac-cain13/R.swift/blob/master/Documentation/Examples.md).


## Documentation

### Sketch

We use [Sketch](http://www.sketchapp.com) to create mockups. To enable people who do not have Sketch to see the results, we use a Sketch plugin called [git-sketch-plugin](https://github.com/mathieudutour/git-sketch-plugin) to render pngs of all art boards. You should have it installed.

If you want to take a look at the latest renders, they are [here](Docs/.exportedArtboards/Time%20Tracker).

If you want to create a change in in a Sketch file, the process to follow is:

- Create a feature branch
- Open the Sketch file
- Make your changes
- Plugins > Git > Generate files for pretty diffs
- Commit
- Push
- Create PR
- Make changes based on PR feedback
- Plugins > Git > Generate files for pretty diffs
- Commit --amend
- Push (force)