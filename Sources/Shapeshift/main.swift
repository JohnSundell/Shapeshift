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

let playgroundName = arguments[1]
let files = Folder.current.makeFileSequence(recursive: true)
let playground = Playground(path: playgroundName)

for file in files where file.extension == "swift" {
    playground.auxiliarySourceFiles.append(file)
}

try playground.generate()

let playgroundFolder = try Folder(path: playground.path)

if arguments.contains("-icloud") {
    let iCloudDrivePath = "~/Library/Mobile Documents/iCloud~com~apple~Playgrounds/Documents"
    let iCloudDrive = try Folder(path: iCloudDrivePath)

    try playgroundFolder.move(to: iCloudDrive)
}

print("""
✅ Generated playground containing \(files.count) source files at:
👉 \(playgroundFolder.path)
""")
