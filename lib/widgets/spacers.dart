// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../utils/sizes.dart';

class P1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s1));
  }
}

class P2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s2));
  }
}

class P5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s5));
  }
}

class P8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s8));
  }
}

class P10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s10));
  }
}

class PH10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: Sizes.s10));
  }
}

class P20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s20));
  }
}

class P30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s30));
  }
}

class P40 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(Sizes.s40));
  }
}

class C0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
}

class C1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s1,
      width: Sizes.s1,
    );
  }
}

class C2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s2,
      width: Sizes.s2,
    );
  }
}

class C3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s3,
      width: Sizes.s3,
    );
  }
}

class C4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s4,
      width: Sizes.s4,
    );
  }
}

class C5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s5,
      width: Sizes.s5,
    );
  }
}

class C6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s5 + Sizes.s1,
      width: Sizes.s5 + Sizes.s1,
    );
  }
}

class C8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s8,
      width: Sizes.s8,
    );
  }
}

class C10 extends StatelessWidget {
  final Color color;

  const C10({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: Sizes.s10,
      width: Sizes.s10,
    );
  }
}

class C15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s15,
      width: Sizes.s15,
    );
  }
}

class C20 extends StatelessWidget {
  final Color color;

  const C20({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: Sizes.s20,
      width: Sizes.s20,
    );
  }
}

class C40 extends StatelessWidget {
  final Color color;

  const C40({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: Sizes.s40,
      width: Sizes.s40,
    );
  }
}

class C30 extends StatelessWidget {
  final Color color;

  const C30({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: Sizes.s30,
      width: Sizes.s30,
    );
  }
}

class C50 extends StatelessWidget {
  final Color color;

  const C50({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: Sizes.s50,
      width: Sizes.s50,
    );
  }
}

class C100 extends StatelessWidget {
  final Color color;

  const C100({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: Sizes.s100,
      width: Sizes.s100,
    );
  }
}

class C150 extends StatelessWidget {
  final Color color;

  const C150({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.transparent,
      height: Sizes.s150,
      width: Sizes.s150,
    );
  }
}
