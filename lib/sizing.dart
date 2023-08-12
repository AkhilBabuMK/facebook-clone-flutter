import 'package:flutter/widgets.dart';

class SizeConfig {
  static var safeBlockVertical;

  static var safeBlockHorizontal;

  // static MediaQueryData? _mediaQueryData;
  // static double? screenWidth;
  // static double ?screenHeight;
  // static double? blockSizeHorizontal;
  // static double? blockSizeVertical;

  // static double? _safeAreaHorizontal;
  // static double? _safeAreaVertical;
  // static double? safeBlockHorizontal;
  // static double? safeBlockVertical;

  void init(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    var screenWidth = _mediaQueryData.size.width;
    var screenHeight = _mediaQueryData.size.height;
    var blockSizeHorizontal = screenWidth / 100;
    var blockSizeVertical = screenHeight / 100;

    var _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    var _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    var safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    var safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}
