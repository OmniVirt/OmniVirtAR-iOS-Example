# OmniVirtAR iOS Example

- [See preview video](#See-preview-video)
- [Requirements](#Requirements)
- [Installation](#Installation)
- [Usage](#Usage)
- [Questions](#Questions)

## See preview video

[![](https://img.youtube.com/vi/yXZN9jkQKro/0.jpg)](https://www.youtube.com/watch?v=yXZN9jkQKro)

## Requirements

- iOS 11.0+
- Xcode 9.2+
- Swift 4+

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

## Usage

1. Within Xcode, open your `Info.plist` file and add `arkit` into `UIRequiredDeviceCapabilities` and also add `NSCameraUsageDescription` so that your app can use camera for augmented reality.

    ```
    <key>UIRequiredDeviceCapabilities</key>
    <array>
      <string>armv7</string>
      <string>arkit</string>
    </array>
	<key>NSCameraUsageDescription</key>
	<string>This app will use the camera for AR experience</string>
    ```

2. Declare an ad object.

    ```swift
    class ViewController: UIViewController {
        
        var adView = OVARVirtualObjectAdInterstitial!
        
        ...
        
    }
    ```

3. Initialize the ad objet with `virtualObjectID` and load the ad. Example below loads the ad at the time a button is clicked. You can get the value of `virtualObjectID` from OmniVirt Ad Campaign Platform.

4. To display ad, pass the completion code block to the load function and call the `present` function. Example below shows the ad right after the load finishes.

    ```swift
    @IBAction func onButtonTouchUpInside(_ sender: Any) {
        adView = OVARVirtualObjectAdInterstitial()
        adView.virtualObjectID = 26
        adView.load(completion: {[weak self] () in
            if let strongSelf = self {
                strongSelf.button.hideLoading()
                strongSelf.adView.present(fromRootViewController: strongSelf)
            }
        })
    }
    ```

## Questions?

Please email us at [contact@omnivirt.com](mailto:contact@omnivirt.com)
