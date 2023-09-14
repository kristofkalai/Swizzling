# Swizzling
Swizzle easily! 🔁

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/Swizzling", exact: .init(0, 0, 1))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

## Usage

```swift
swizzleMethods(from: #selector(Person.introduce), of: Person.self, to: #selector(Person.customIntroduce), of: Person.self)
```

For details see the Example app.
