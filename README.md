# BRAlerts

BRAlerts is a small file written in pure Swift that allows you to simply display an alert controller in your from any view controller. Enjoy!

## Features
----------------
- [x] Display a simple UIAlertController using one line of code
- [x] Delay UIViewController presentation
- [x] Use the default actions or add a custom one

## Setup
----------------
Just download the BRAlerts.swift file and drag it into your Xcode project.

## Usage
----------------
```swift
// Simple alert
BRAlerts.show(on: self, title: "Welcome! 😍", message: "This is BRAlerts", style: .alert, actions: [.ok])

        
// Alert with an action that opens the app's settings
BRAlerts.show(on: self, title: "Change Language", message: "👉 Please open the app's settings and select the preferred language", style: .alert)


// Alert with custom action
let customAction = UIAlertAction(title: "Try Again", style: .default) { (action) in
    // Perform a custom task
}
BRAlerts.show(on: self, title: "😯 Task Error", message: "An error occurred while performing the task", style: .alert, actions: [.cancel], customActions: [customAction])


// Alert as an Action Sheet with delay
BRAlerts.show(on: self, title: "Success", message: "The download has been completed successfully", style: .actionSheet, actions: [.ok])
```

## MIT License
----------------
BRAlerts is available under the MIT license. See the LICENSE file for more info.
