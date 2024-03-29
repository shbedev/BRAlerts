# BRAlerts

BRAlerts is a small class written in Swift that lets you display a basic `UIAlertController` from any view controller, using a single line of code. Enjoy!

![Written in Swift](https://img.shields.io/badge/Written%20in-Swift-blue)

## Features
----------------
- [x] Display a simple `UIAlertController` using a single line of code
- [x] Use the default `UIAlertAction`s or add a custom one
- [x] Delay `UIAlertController` presentation

## Setup
----------------
Just download the BRAlerts.swift file and drag it into your Xcode project.

## Usage
----------------

Simple alert
```swift
BRAlerts.show(on: self, title: "Welcome! 😍", message: "This is BRAlerts", style: .alert, actions: [.ok])
```

Alert with an action that opens the app's settings
```swift
BRAlerts.show(on: self, title: "Change Language", message: "👉 Please open the app's settings and select the preferred language", style: .alert, actions: [.openSettings])
```

Alert with a custom action
```swift
let customAction = UIAlertAction(title: "Try Again", style: .default) { (action) in
    // Perform a custom task
}
BRAlerts.show(on: self, title: "😯 Task Error", message: "An error occurred while performing the task", style: .alert, actions: [.cancel], customActions: [customAction])
```

Alert as an Action Sheet with delay
```swift
BRAlerts.show(on: self, title: "Success", message: "The download has been completed successfully", style: .actionSheet, delay: 0.5, actions: [.ok])
```

## MIT License
----------------
BRAlerts is available under the MIT license. See the LICENSE file for more info.
