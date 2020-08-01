import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // Returns the MediaQuery
  MediaQueryData get mq => MediaQuery.of(this);

  /// Returns if Orientation is landscape
  bool get isLandscape => mq.orientation == Orientation.landscape;

  /// Returns same as MediaQuery.of(context).size
  ///
  Size get sizeX => mq.size;

  /// Returns same as MediaQuery.of(context).size.width
  ///
  double get width => sizeX.width;

  /// Returns same as MediaQuery.of(context).height
  ///
  double get height => sizeX.height;
}

extension ContextRouteExtensions on BuildContext {
  /// Used navigate to a new screen.
  ///
  Future<T> push<T>(Widget screen) {
    return Navigator.of(this)
        .push<T>(MaterialPageRoute(builder: (_) => screen));
  }

  /// Used to go back to previous screen.
  ///
  void pop<T>({T data}) {
    try {
      Navigator.of(this).pop(data);
    } catch (e, s) {
      debugPrint('POP FAILED $e\n$s');
    }
  }

  /// Used to replace the current screen.
  ///
  Future<Null> replace(Widget screen) {
    return Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  }

  /// Used to make parameter screen as root screen.
  ///
  void makeFirst(Widget screen) {
    Navigator.popUntil(this, (predicate) => predicate.isFirst);
    replace(screen);
  }
}
