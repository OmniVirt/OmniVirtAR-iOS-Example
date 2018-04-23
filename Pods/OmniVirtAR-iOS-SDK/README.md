# OmniVirt AR SDK for iOS

OmniVirt AR is an Augmented Reality solution for Marketing and Advertising. This SDK enables publishers and app developers to incorporate immersive AR ad experience into their apps on iOS platform.

Please visit our website at [www.omnivirt.com](https://www.omnivirt.com) to learn more or you can contact us via email at [contact@omnivirt.com](mailto:contact@omnivirt.com).

## Preview Video
[![](https://img.youtube.com/vi/yXZN9jkQKro/0.jpg)](https://www.youtube.com/watch?v=yXZN9jkQKro)

## Requirements
* iOS 11.0+
* Xcode 9.2+
* Swift 4+

## Installation

### CocoaPods
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. It is the most convenient way to add OmniVirtAR SDK to your app. You can install it with the following command:
```bash
$ gem install cocoapods
```
To integrate OmniVirtAR into your Xcode project using CocoaPods, specify it in your `Podfile`:
```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '11.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'OmniVirtAR-iOS-SDK'
end
```
Then, run the following command:
```bash
$ pod install
```

## Xcode Project Setup
In your Xcode project, open your `Info.plist` file and add `arkit` into `UIRequiredDeviceCapabilities` and add `NSCameraUsageDescription` with description so that your app can use camera for augmented reality.
```xml
<key>UIRequiredDeviceCapabilities</key>
<array>
    <string>armv7</string>
    <string>arkit</string>
</array>
<key>NSCameraUsageDescription</key>
<string>This app will use the camera for AR experience</string>
```

## Usage

Currently, there are two ways to start an AR advertisement. The first way is to call our API to present it manually. Another way is to start it when the user tapped on a button with a special link that uses OmniVirt's custom URL scheme from an external app or a web browser. Then, it will navigate the user to your app and the SDK will present an AR advertisement automatically.

### 1) Present an AR ad manually

1. Import module

    ```swift
    import OmniVirtAR
    ```

2. Create an instance of `OVARInterstitial` specified by an `adUnitID` then call the `present` method to start:
    ```swift
    let adView = OVARInterstitial(adUnitID: "25")
    adView.present()
    ```

    Note: You can get the value of `adUnitID` for your ad from OmniVirt Ad Campaign Platform.

### 2) Present an AR ad automatically using a link with custom URL scheme

1. Open `Info.plist` and insert the following:

    ```xml
    <key>CFBundleURLTypes</key>
    <array>
        <dict>
        <key>CFBundleURLName</key>
        <string>com.omnivirt.app.APP_ID</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>omnivirt-APP_ID</string>
        </array>
        </dict>
    </array>
    ```

    You must replace `APP_ID` with your own application ID. You can get your own application ID by registering your app with OmniVirt.

2. Within your `AppDelegate`, insert the following line of code:

    ```swift
    func application(_ app: UIApplication, open url: URL, options:[UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        return OVARLauncher.shared.openURL(url, options)
    }
    ```

2. To test it, open a web browser on your mobile and enter a URL to your ad unit. For example, if your application ID is `12345` and your ad unit ID is `25`, your URL would be something like this: `omnivirt-12345://adunit?id=25`. When you enter this URL and hit the go button, it will navigate you to your app and the SDK will start your AR ad automatically.

## Questions?

Please email us at [contact@omnivirt.com](mailto:contact@omnivirt.com)