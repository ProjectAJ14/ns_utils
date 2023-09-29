# ns_utils - Flutter Utility Library

[![Build Status](https://img.shields.io/badge/build-1.1.2-brightgreen)][repo_link]
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![style: flutter_lints][badge]][badge_link]

## Introduction

ns_utils is a powerful Flutter utility library that simplifies and enhances your Flutter app development experience. It provides a collection of methods and extensions to streamline your code, making it more readable and efficient. Whether you need responsive design, date and time handling, map operations, string manipulation, or widget customization, ns_utils has got you covered.

## Getting Started

1. Open your project's `pubspec.yaml` file.
2. Add ns_utils as a dependency and replace `[version]` with the latest version:

```yaml
dependencies:
  flutter:
    sdk: flutter
  ns_utils: ^[version]
```

3. Run `flutter pub get` to fetch the package.

## Import the Package

```dart
import 'package:ns_utils/src.dart';
```

## What's Inside

ns_utils offers a wide range of features to simplify your Flutter development process:

### CustomErrorWidget

![Demo](https://miro.medium.com/max/1000/1*KcW6GbjeMUO2zeiGV7KRzQ.png)

Learn more about it in the article [Flutter -: KILL THE RED SCREEN OF DEATH](https://medium.com/nonstopio/flutter-kill-the-red-screen-of-death-f5e0601d1cdc).

### Sizes

![Demo](https://miro.medium.com/max/2160/1*zNcRtlhzm9407KJWtAFnFw.png)

Read about responsive app design in Flutter in [Responsive App in Flutter](https://medium.com/nonstopio/let-make-responsive-app-in-flutter-e48428795476).

### BuildContext Extensions

Simplify your code by using these extensions:

- Replace lengthy `Navigator.of(context).push(...)` with `context.push(...)`.
- More intuitive methods like `context.replace(...)`, `context.makeFirst(...)`, and `context.pop(...)` are available.
- Easily access device dimensions with `context.mq.sizeX.width` and `context.mq.sizeX.height`.
- Simplify focus management with `context.setFocus(focusNode: focusNode)`.

### DateTime Extensions

Enhance date and time handling with extensions like:

- `dayDifference`: Get the difference in days between a date and the current date.
- `toServerFormat()`: Get an ISO-8601 formatted date string.
- `isToday`, `isYesterday`, `isTomorrow`: Check if a date is today, yesterday, or tomorrow.
- `tomorrow()` and `yesterday()`: Get the next day or previous day.

### Map Extensions

Streamline operations on Map objects:

- Use methods like `getBool('key')`, `getInt('key')`, `getDouble('key')`, `getString('key')`, `getList('key')`, and `getMap('key')` to retrieve values with optional default values.
- Convert a Map to a JSON string using `toJson()`.
- Beautify Map output with `toPretty()`.

### List Extensions

Manipulate lists easily with `toJson()`, which converts a list to a JSON string.

### String Extensions

Simplify string operations:

- `toMap()`: Parse a JSON string into a Map.
- `toList()`: Parse a JSON string into a List.
- `isEmptyOrNull`: Check if a string is null or empty.
- `isNotBlank`: Check if a string is not null, not empty, and not just whitespace.
- `toINT` and `toDOUBLE`: Parse a string as an int or double.
- `asBool`: Convert a string into a boolean.

### double/int Extensions

Enhance numeric operations with extensions like:

- `asBool`: Convert an integer into a boolean.
- Fractional operations: `tenth`, `fourth`, `third`, `half`, `doubled`, `tripled`.

### Widget Extensions & Spacers

Customize widgets with ease:

- Add tooltips and gestures to widgets without complex nesting.
- Utilize widgets like `Container` and `SizedBox` with simplified notation.
- Expect even more widget enhancements in future updates.

## Contributing

You can contribute to ns_utils in various ways:

- Propose new features or enhancements.
- Report bugs.
- Fix bugs.
- Participate in discussions and help with decision-making.
- Improve documentation.
- Send pull requests with your contributions.

A big thank you to all our contributors!

<div align="center">
  <a href="https://github.com/ProjectAJ14/ns_utils/graphs/contributors">
    <img src="https://contrib.rocks/image?repo=ProjectAJ14/ns_utils" />
  </a>
</div>

[badge]: https://img.shields.io/badge/style-effective_dart-40c4ff.svg
[badge_link]: https://pub.dev/packages/flutter_lints
[repo_link]: https://github.com/ProjectAJ14/ns_utils