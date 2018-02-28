# swift-sandbox
Examples and demos using Swift


## Overview

This repository contains examples and demos that I have created to learn basic swift functionality. 
Most of these examples I created in preparation for the PhonemeKey keyboard project which began in 2016.  
Unfortunately, many of these projects were created with Swift 2.x and no longer run or migrate with the most recent version of XCode. None of these projects are really worth the effort of installing XCode 8 and migrating and are here for archival purposes.


## Notable Projects
[MVVM demo](https://github.com/hieberr/swift-sandbox/tree/master/DesignPatterns-MvvmDemo/DesignPatterns-MvvmDemo) - A simple app which demonstrates using a ViewModel class to stand between the Model and the ViewController. This is a simple example, but the the more complex MVVM approach is best used for more complicated user interfaces where it is useful to decouple viewController and the Model classes. This approach allows you to unit test the ViewModel functionality which would otherwise be difficult.  This also makes it easier to swap out the Model, or Swap out the ViewController/View with a new implementation.

[Custom Keyboard (Swift2.0)](https://github.com/hieberr/swift-sandbox/tree/master/Swift2.0/Custom%20Keyboard) - A bare bones 3rd party keyboard extension with a button that plays a sound. 

[PopoverViewTutorial (Swift2.0)](https://github.com/hieberr/swift-sandbox/tree/master/Swift2.0/PopoverViewTutorial) - An example of creating a view that temporarily pops up. We needed this to display phonemes as they were typed similar to how the stock keyboard displays each key as you type it.

[TableViews (Swift2.0)](https://github.com/hieberr/swift-sandbox/tree/master/Swift2.0/TableViews) - An example of working with table views which we need to use in PhonemeKey's settings.

[WorkingWithAudio (Swift2.0)](https://github.com/hieberr/swift-sandbox/tree/master/Swift2.0/Working%20With%20Audio) - An example of playing back audio files. PhonemeKey needed to have audio feedback. 

[ProgrammaticUiDemo (Swift2.0)](https://github.com/hieberr/swift-sandbox/tree/master/Swift2.0/ProgrammaticUiDemo) - An example of laying out a user interface with constraints programatically instead of using Interface Builder. After playing with this example it was determined that it would be easier for us to lay out the PhonemeKey UI programmatically as there are many different permutations of screen size, orientation, and keyboard layout that we needed to cover.

[FireBase-Swift-Demo (Swift2.0)](https://github.com/hieberr/swift-sandbox/tree/master/Swift2.0/Firebase-Swift-Demo) - An example of using Swift with Firebase. This example shows how to: create a new user, login as a user, pull data for a user from Firebase. I was considering using Firebase to develop a multi-user cloud based app for managing gardens and greenhouses. 

