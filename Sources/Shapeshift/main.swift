/**
 *  Shapeshift
 *  Copyright (c) John Sundell 2018
 *  MIT license - see LICENSE.md
 */

import Foundation
import Xgen
import Files

let arguments = CommandLine.arguments

guard arguments.count > 1 else {
    print("""
    Shapeshift
    ----------
    Transform a folder of Swift files into a playground that can
    be opened either in Xcode or Swift Playgrounds on the iPad.

    Usage: shapeshift [playgroundName]

    You can also pass the -icloud flag to have Shapeshift move
    the generated playground to your iCloud Drive, to make it easy
    to open it in Swift Playgrounds on the iPad.
    """)

    exit(1)
}

var targetPath = arguments[1]

if arguments.contains("-icloud") {
    let iCloudDrivePath = "~/Library/Mobile Documents/iCloud~com~apple~Playgrounds/Documents/"
    targetPath = iCloudDrivePath + targetPath
}

let files = Folder.current.makeFileSequence(recursive: true)
let playground = Playground(path: targetPath)

for file in files where file.extension == "swift" {
    playground.auxiliarySourceFiles.append(file)
}

try playground.generate()

print("""
✅ Generated playground containing \(files.count) source files at:
👉 \(playground.path)
""")
