# How to Create a Cocoapods Package
the Cocoapods "Hello World" Template using Objective C

[![Build Status](https://travis-ci.org/gergelyorosz/objective-c-pod-template.svg?branch=master)](https://travis-ci.org/gergelyorosz/objective-c-pod-template)

This is an opinionated template to fork to easily create pods that have the following:
- Can be installed via the `pod install my-pod-name` template
- Pod latest version displayed on the readme page
- Automated tests running TravisCI
- Displaying the build status button: [![Build Status](https://travis-ci.org/gergelyorosz/objective-c-pod-template.svg?branch=master)](https://travis-ci.org/gergelyorosz/objective-c-pod-template)

## Creating a Pod based on this template

#### 0. Fork this project
... or clone it or copy the source code so you can start to modify it

#### 1. Replace the HelloWorld project with your own
- Replace `HelloWorld.xcodeproj` and the `HelloWorld` & `HelloWorld` folders with your own project.

  `Note:` in the current example `HelloWorld` is a Cocoa Touch Static Library

#### 2. Setup Continous Integration

- Configure `.travis.yml`
  - Change the `script:` part to point to your project's `.xcodeproj` and `scheme`. So for example if your project's name and Scheme is `MyAwesomeFramework` then change
  ```
  xctool test -project HelloWorld.xcodeproj -scheme HelloWorld -sdk iphonesimulator8.1 -destination "platform=iOS Simulator,OS=8.1,name=iPhone 6"
  ```
  to
  ```
  xctool test -project MyAwesomeFramework.xcodeproj -scheme HelloWorld -sdk iphonesimulator8.1 -destination "platform=iOS Simulator,OS=8.1,name=iPhone 6"
  ```
- Register with / login to [TravisCI](https://travis-ci.org/)
- Add your repository and your build should be triggered!
- Once your build is passing you can embed the build status image to your github page. [See this tutorial on how](http://docs.travis-ci.com/user/status-images/).
