import 'package:flutter/material.dart';

// Package imports:

import '../src.dart';

const Size _defaultSize = Size(360, 690);

double defaultScreenWidth = _defaultSize.width;
double defaultScreenHeight = _defaultSize.width;
double screenWidth = _defaultSize.width;
double screenHeight = _defaultSize.height;

///Adapting screen and font size.
///Let your UI display a reasonable layout on different screen sizes!
///
class Sizes {
  Sizes._();

  static bool initialized = false;

  static double getSize(double value) =>
      initialized ? ScreenUtil().setWidth(value) : value;

  //<editor-fold desc="Width Getters">
  static double get s0 => getSize(0);

  static double get s1 => getSize(1);

  static double get s2 => getSize(2);

  static double get s3 => getSize(3);

  static double get s4 => getSize(4);

  static double get s5 => getSize(5);

  static double get s6 => getSize(6);

  static double get s8 => getSize(8);

  static double get s9 => getSize(9);

  static double get s10 => getSize(10);

  static double get s11 => getSize(11);

  static double get s12 => getSize(12);

  static double get s14 => getSize(14);

  static double get s15 => getSize(15);

  static double get s16 => getSize(16);

  static double get s18 => getSize(18);

  static double get s20 => getSize(20);

  static double get s25 => getSize(25);

  static double get s30 => getSize(30);

  static double get s35 => getSize(35);

  static double get s40 => getSize(40);

  static double get s45 => getSize(45);

  static double get s50 => getSize(50);

  static double get s55 => getSize(55);

  static double get s60 => getSize(60);

  static double get s70 => getSize(70);

  static double get s80 => getSize(80);

  static double get s90 => getSize(90);

  static double get s100 => getSize(100);

  static double get s120 => getSize(120);

  static double get s150 => getSize(150);

  static double get s165 => getSize(165);

  static double get s200 => getSize(200);

  static double get s220 => getSize(220);

  static double get s300 => getSize(300);

  static double get s400 => getSize(400);

  static double get s500 => getSize(500);

  //</editor-fold>

  static EdgeInsets get defaultSpace => EdgeInsets.all(Sizes.s8);

  static EdgeInsets get smallSpace => EdgeInsets.all(Sizes.s10);

  static EdgeInsets get extraSmallSpace => EdgeInsets.all(Sizes.s5);

  static EdgeInsets get mediumSpace => EdgeInsets.all(Sizes.s15);

  static EdgeInsets get largeSpace => EdgeInsets.all(Sizes.s20);

  ///initialize sizes
  ///Should be called only once
  ///
  static void initScreenAwareSizes(
    BuildContext context, {
    required BoxConstraints constraints,
    Orientation orientation = Orientation.portrait,
    Size designSize = _defaultSize,
  }) {
    if (initialized) {
      appLogsNS('Sizes already initialized');
      printScreenInformation();
      return;
    }
    initialized = true;

    screenWidth = context.sizeX.width;
    screenHeight = context.sizeX.height;

    if (screenWidth > 300 && screenWidth < 500) {
      defaultScreenWidth = 450;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else if (screenWidth > 500 && screenWidth < 600) {
      defaultScreenWidth = 500;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else if (screenWidth > 600 && screenWidth < 700) {
      defaultScreenWidth = 550;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else if (screenWidth > 700 && screenWidth < 1050) {
      defaultScreenWidth = 800;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else {
      defaultScreenWidth = screenWidth;
      defaultScreenHeight = screenHeight;
    }

    ScreenUtil.init(
      BoxConstraints(
        maxWidth: screenWidth,
        maxHeight: screenHeight,
      ),
      context: context,
      orientation: orientation,
      designSize: Size(defaultScreenWidth, defaultScreenHeight),
    );

    printScreenInformation();
  }

  static void printScreenInformation() {
    appLogsNS('''
    Device Screen Details
    screenWidth: $screenWidth
    screenHeight: $screenHeight
    ---------X--------X-----------
    defaultScreenWidth: $defaultScreenWidth
    defaultScreenHeight: $defaultScreenHeight
    
    Actual  : After(Width) 
    1      : ${1.w} 
    10     : ${10.w}
    15     : ${15.w}
    20     : ${20.w}
    100    : ${100.w}     
     
    Actual  : After(Height) 
    1      : ${1.h} 
    10     : ${10.h}
    15     : ${15.h}
    20     : ${20.h}
    100    : ${100.h}    
     
    Actual  : After(Radius) 
    10     : ${10.r}
    15     : ${15.r}
    20     : ${20.r}
     
    FontSize
    Actual : After
    15  :  ${15.sp} 
    20  :  ${20.sp}  
    
    ---------X--------X-----------
    Device width px: ${ScreenUtil().screenWidth}
    Device height px: ${ScreenUtil().screenHeight}
    Device pixel density: ${ScreenUtil().pixelRatio}
    Bottom safe zone distance dp: ${ScreenUtil().bottomBarHeight}
    Status bar height px: ${ScreenUtil().statusBarHeight}dp
    Ratio of actual width dp to design draft px: ${ScreenUtil().scaleWidth}
    Ratio of actual height dp to design draft px: ${ScreenUtil().scaleHeight}
    The ratio of font and width to the size of the design: ${ScreenUtil().scaleWidth}
    The ratio of  height width to the size of the design: ${ScreenUtil().scaleHeight}
    ''');
  }
}
