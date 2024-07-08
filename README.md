# JVSUIButton
A subclass of UIButton written in Swift, adding the ability to set a minimum hit target size.

In the [Adaptivity and Layout chapter of the iOS Human Interface Guidelines](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/LayoutandAppearance.html), Apple states that it is recommended to give tappable controls a hit target of about 44 x 44 points. When you use a UIButton that is smaller than the recommended hit target, JVSUIButton allows you to specify a hit target that is larger than the button itself.

# IMPORTANT NOTICE
This repository has moved to [GitLab](https://gitlab.joris-vervuurt.com/swift/jvsuibutton).
The GitHub repository been archived and will no longer be maintained.

## Usage
Simply drag a UIButton onto your view and set it's class to JVSUIButton, or programmatically add it as a subview.

### Properties
The following properties are available within Interface Builder and can also be set programmatically.

| Name                      | Type      | Default Value | Description  |
| :------------------------ | :-------- | :------------ | :----------  |
| `extendHitTargetIfNeeded` | `Bool`    | `false `      | A value that indicates whether the hit target should be extended in case it is smaller than the minimum hit target size. |
| `minimumHitTargetWidth`   | `CGFloat` | `44`          | The minimum hit target width. |
| `minimumHitTargetHeight`  | `CGFloat` | `44`          | The minimum hit target height. |


## License
The MIT License (MIT)

Copyright (c) 2015 Joris Vervuurt Software

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
