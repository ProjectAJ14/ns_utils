import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../src.dart';

String get _restartApp => "Restart App!";

String get _crashFinalTitle => "Abnormal Behavior!";

String get _crashFinalMessage =>
    "It looks like the App is behaving abnormally. We have notified our engineering team about it, and you should get an update soon.\nWe apologize for the inconvenience caused.";

///[CustomErrorWidget] an Custom Error widget
///
///Only If [showErrorDetails] is enabled error details are shown
///
class CustomErrorWidget extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  final bool showErrorDetails;
  final String logoAsset;
  final Function(BuildContext) onRestart;

  const CustomErrorWidget({
    Key? key,
    required this.errorDetails,
    required this.showErrorDetails,
    required this.logoAsset,
    required this.onRestart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          constraints: BoxConstraints(maxHeight: screenWidth / 2.w),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              if (!showErrorDetails)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    C20(),
                    Container(
                      child: Image.asset(
                        logoAsset,
                        fit: BoxFit.contain,
                      ),
                      height: 100.w,
                      width: 100.w,
                    ),
                    C20(),
                    Text(
                      _crashFinalTitle,
                      style: TextStyle(
                        fontSize: 20.w,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    C20(),
                    Text(
                      _crashFinalMessage,
                      style: TextStyle(
                        fontSize: 18.w,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              C20(),
              if (showErrorDetails)
                Column(
                  children: <Widget>[
                    Text(
                      '${errorDetails.summary.toString()}',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.red,
                      ),
                    ),
                    C20(),
                    Text(
                      "$errorDetails",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              OutlinedButton(
                child: Text(_restartApp),
                onPressed: () => onRestart(context),
              ),
              Container(
                height: 50.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
