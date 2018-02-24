# swift-sandbox
Examples and demos using Swift


## Overview

This repository contains examples and demos that I have created to learn basic swift functionality. 
Most of these examples I created in preparation for the PhonemeKey keyboard project which began in 2016.  
Unfortunately, many of these projects were created with Swift 2.x and no longer run or migrate with the most recent version of XCode. None of these projects are really worth the effort of installing XCode 8 and migrating and are here for archival purposes.


## Notable Projects

[Custom Keyboard](https://github.com/hieberr/swift-sandbox/tree/master/Custom%20Keyboard) - A bare bones 3rd party keyboard extension with a button that plays a sound. 

[PopoverViewTutorial](https://github.com/hieberr/swift-sandbox/tree/master/PopoverViewTutorial) - An example of creating a view that temporarily pops up. We needed this to display phonemes as they were typed similar to how the stock keyboard displays each key as you type it.

[TableViews](https://github.com/hieberr/swift-sandbox/tree/master/TableViews) - An example of working with table views which we need to use in PhonemeKey's settings.

[WorkingWithAudio](https://github.com/hieberr/swift-sandbox/tree/master/Working%20With%20Audio) - An example of playing back audio files. PhonemeKey needed to have audio feedback. 

[ProgrammaticUiDemo](https://github.com/hieberr/swift-sandbox/tree/master/ProgrammaticUiDemo) - An example of laying out a user interface with constraints programatically instead of using Interface Builder. After playing with this example it was determined that it would be easier for us to lay out the PhonemeKey UI programmatically as there are many different permutations of screen size, orientation, and keyboard layout that we needed to cover.

[FireBase-Swift-Demo](https://github.com/hieberr/swift-sandbox/tree/master/Firebase-Swift-Demo) - An example of using Swift with Firebase. This example shows how to: create a new user, login as a user, pull data for a user from Firebase. I was considering using Firebase to develop a multi-user cloud based app for managing gardens and greenhouses. 

