# URL Image Module
[![build](https://github.com/swiftui-packages/url-image-module/actions/workflows/build.yml/badge.svg)](https://github.com/swiftui-packages/url-image-module/actions/workflows/build.yml)
[![test](https://github.com/swiftui-packages/url-image-module/actions/workflows/test.yml/badge.svg)](https://github.com/swiftui-packages/url-image-module/actions/workflows/test.yml)
[![swiftlint](https://github.com/swiftui-packages/url-image-module/actions/workflows/swiftlint.yml/badge.svg)](https://github.com/swiftui-packages/url-image-module/actions/workflows/swiftlint.yml)
[![swiftpackageindex swift versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fswiftui-packages%2Furl-image-module%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/swiftui-packages/url-image-module)
[![swiftpackageindex platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fswiftui-packages%2Furl-image-module%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/swiftui-packages/url-image-module)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Usage
A URLImage is separted in three logical separated states:
1.  __loading__, during the download process
2.  __default__, in case the download did fail
3.  __content__, after the successful download

The constructor comes with the option to either use a __URL__ or a plain __String__ to define the resources origin. In case the String does not represent a valid URL, the content will fallback to default. 

```swift
if let url = URL(string: "www.abc.com/image") {
    URLImage(url: url)
}
```

```swift
URLImage(url: "www.abc.com/image")
```

<br>

## Integration
1.  Copy the resource url:
```
https://github.com/swiftui-packages/url-image-module.git
```

2.  Open your Xcode project

3.  Two options a and b for step 3<br>
    a) &nbsp; At the menu bar navigate to _File_ / _Swift Packages_ / _Add Package Dependency_<br>
    b1)  Select the project's root folder<br>
    b2)  select your app name under _PROJECT_<br>
    b3)  Open _Swift Packages_ tab on the right side of _Info_ and _Build Settings_<br>
    b4)  Hit the _+_ button at the bottom of the list<br>

4.  Here you should be prompted to "_Choose Package Repository:_"

5.  Paste the resource url

6.  Select _Next_ to go with the latest version or select a specific version or branch

7.  After a short loading period of package resolution you get prompted to _Choose package products and targets_ (the default should be fine)

8.  The complete hit the _Finish_ button

9.  Import URLImageModule into the files where you want to use it

<br>

## Can also be found here
-   [Swift Package Registry](https://swiftpackageregistry.com/swiftui-packages/url-image-module)
-   [Swift Package Index](https://swiftpackageindex.com/swiftui-packages/url-image-module)
-   [Swift Pack](https://swiftpack.co/package/swiftui-packages/url-image-module)

<br>

## ToDos
-   maintaining README.md file
    -   GIF of importing Swift Package Manager Packages into Xcode Projects
    -   phrasing an introduction text
    -   writing usage instructions with code examples

-   feature: optionally allow tho bind to the optional downloaded image

-   possible feature: headers parameter in case that multiple headers are required
