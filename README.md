# Icon
A small graphical representation that is used to visually represent an action or feature.

## Specifications
The icon specifications on Zeroheight is [here](https://spark.adevinta.com/1186e1705/p/11373f-icon).

## Usage
Icon is available on UIKit and SwiftUI.

### IconUIView
Parameters:
* `iconImage`: The image to present.
* `theme`: The current Spark-Theme. [You can always define your own theme.](https://github.com/adevinta/spark-ios/wiki/Theming#your-own-theming)
* `intent`: The intent of icon, e.g. alert, neutral
* `size`: The size of icon, e.g. small, large

### IconView
Parameters:
* `theme`: The current Spark-Theme. [You can always define your own theme.](https://github.com/adevinta/spark-ios/wiki/Theming#your-own-theming)
* `intent`: The intent of icon, e.g. alert, neutral
* `size`: The size of icon, e.g. small, large
* `iconImage`: The image to present.

## Examples
### IconUIView

```swift
let icon = IconUIView(
  iconImage: UIImage(systemName: "lock.circle"),
  theme: theme,
  intent: intent,
  size: .small
)

view.addSubview(icon)
NSLayoutConstraint.activate([
  icon.leadingAnchor.constraint(equalTo: view.leadingAnchor),
  icon.trailingAnchor.constraint(equalTo: view.trailingAnchor),
  icon.topAnchor.constraint(equalTo: view.topAnchor),
  icon.bottomAnchor.constraint(equalTo: view.bottomAnchor)
])
```

### IconView
```swift
var body: some View {
    IconView(
        theme: SparkTheme.shared,
        intent: self.intent,
        size: self.size,
        iconImage: Image("lock.circle")
    )
}
```

## License

```
MIT License

Copyright (c) 2024 Adevinta

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
```