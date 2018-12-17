# 🔶 Shapeshift

<img src="https://img.shields.io/badge/Swift-4.2-orange.svg" /> <a href="https://swift.org/package-manager">
    <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
</a> <a href="https://github.com/johnsundell/marathon">
    <img src="https://img.shields.io/badge/marathon-compatible-brightgreen.svg?style=flat" alt="Marathon compatible" />
</a> <a href="https://twitter.com/johnsundell">
    <img src="https://img.shields.io/badge/twitter-@johnsundell-blue.svg?style=flat" alt="Twitter: @johnsundell" />
</a>

Welcome to **Shapeshift**, a tool that lets you quickly convert a folder of Swift files into an iPad-compatible Playground. It can even place it in Swift Playground's documents folder in your iCloud Drive, so that you can instantly pick up your iPad and start coding! 🚀

## Usage

Generate a playground containing all the Swift files in the current directory (and any of its subdirectories). The only argument you have to pass is the name of the playground you wish to generate:

```
$ shapeshift NameOfYourPlayground
```

If you are using Shapeshift to be able to quickly move a set of Swift source files to the iPad, pass the `-icloud` flag to have the generated playground be automatically moved into Swift Playground's documents folder in your iCloud Drive:

```
$ shapeshift NameOfYourPlayground -icloud
```

That's it! 🙂

## Installation

Shapeshift is a Swift package. To install it, use one of the following methods:

### 📦 Using the [Swift Package Manager](https://github.com/apple/swift-package-manager)

```
$ git clone https://github.com/JohnSundell/Shapeshift.git
$ cd Shapeshift
$ swift build -c release -Xswiftc -static-stdlib
$ install .build/Release/Shapeshift /usr/local/bin/shapeshift
```

### 🏃‍♂️ Using [Marathon](https://github.com/JohnSundell/Marathon)

```
$ marathon install johnsundell/shapeshift
```

If you encounter any issues during installation, please refer to the documentation of the tool that you're using to install Shapeshift.

## Contributions

Shapeshift is developed completely in the open, and your contributions are more than welcome.

You might notice that this project does not have GitHub issues enabled. That's because this project uses the same PR-focused workflow as Splash, and other projects. You can [read more about that workflow here](https://github.com/JohnSundell/Splash/blob/master/CONTRIBUTING.md#bugs-feature-requests-and-support).

Hope you enjoy Shapeshift! 😀