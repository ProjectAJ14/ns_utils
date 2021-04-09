// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../src.dart';
import 'logs.dart';

double defaultScreenWidth = 400;
double defaultScreenHeight = 810;
double screenWidth = defaultScreenWidth;
double screenHeight = defaultScreenHeight;

///Adapting screen and font size.
///Let your UI display a reasonable layout on different screen sizes!
///
class Sizes {
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

  static double get s300 => getSize(300);

  //</editor-fold>

  static EdgeInsets get defaultSpace => EdgeInsets.all(Sizes.s8);

  static EdgeInsets get smallSpace => EdgeInsets.all(Sizes.s10);

  static EdgeInsets get extraSmallSpace => EdgeInsets.all(Sizes.s5);

  static EdgeInsets get mediumSpace => EdgeInsets.all(Sizes.s15);

  static EdgeInsets get largeSpace => EdgeInsets.all(Sizes.s20);

  ///initialize sizes
  ///Should be called only once
  ///
  static void initScreenAwareSizes(BuildContext context) {
    if (initialized) {
      nsuLogs('Sizes already initialized');
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
      context,
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    );

    FontSizes.initScreenAwareFontSize();

    printScreenInformation();
  }

  static void printScreenInformation() {
    nsuLogs('''
    Device Screen Details
    screenWidth: $screenWidth
    screenHeight: $screenHeight
    ---------X--------X-----------
    defaultScreenWidth: $defaultScreenWidth
    defaultScreenHeight: $defaultScreenHeight
    Actual  : After 
    1      : $s1 
    10     : $s10
    15     : $s15
    20     : $s20
    100    : ${getSize(100)}   
 
    
    FontSize
    Actual : After
    15  :  ${FontSizes.s15} 
    20  :  ${FontSizes.s20}  
    
    ---------X--------X-----------
    Device width px: ${ScreenUtil.screenWidth}
    Device height px: ${ScreenUtil.screenHeight}
    Device pixel density: ${ScreenUtil.pixelRatio}
    Bottom safe zone distance dp: ${ScreenUtil.bottomBarHeight}
    Status bar height px: ${ScreenUtil.statusBarHeight}dp
    Ratio of actual width dp to design draft px: ${ScreenUtil().scaleWidth}
    Ratio of actual height dp to design draft px: ${ScreenUtil().scaleHeight}
    The ratio of font and width to the size of the design: ${ScreenUtil().scaleWidth * ScreenUtil.pixelRatio}
    The ratio of  height width to the size of the design: ${ScreenUtil().scaleHeight * ScreenUtil.pixelRatio}
    ''');
  }

  double get s1000 => Sizes.getSize(1000);
}

class FontSizes {
  static bool initialized = false;

  static double getSp(double value) =>
      initialized ? ScreenUtil().setSp(value) : value;

  //<editor-fold desc="FontSize Getters">
  static double get s5 => getSp(5);

  static double get s6 => getSp(7);

  static double get s7 => getSp(7);

  static double get s8 => getSp(8);

  static double get s9 => getSp(9);

  static double get s10 => getSp(10);

  static double get s11 => getSp(11);

  static double get s12 => getSp(12);

  static double get s13 => getSp(13);

  static double get s14 => getSp(14);

  static double get s15 => getSp(15);

  static double get s16 => getSp(16);

  static double get s17 => getSp(17);

  static double get s18 => getSp(18);

  static double get s19 => getSp(19);

  static double get s20 => getSp(20);

  static double get s21 => getSp(21);

  static double get s22 => getSp(22);

  static double get s23 => getSp(23);

  static double get s24 => getSp(24);

  static double get s25 => getSp(25);

  static double get s26 => getSp(26);

  static double get s27 => getSp(27);

  static double get s28 => getSp(28);

  static double get s29 => getSp(29);

  static double get s30 => getSp(30);

  static double get s36 => getSp(36);

  //</editor-fold>

  ///initialize FontSize
  ///
  static void initScreenAwareFontSize() {
    if (initialized) {
      nsuLogs('FontSize already initialized');
      return;
    }
    initialized = true;
  }

  double get s1000 => Sizes.getSize(1000);
}
