import 'package:flutter/material.dart';
import 'package:retail_shop_ecommerce/rs_colors.dart';

class Styles {
  static const double _textSizeLarge = 25.0;
  static const double _textSizeDefault = 16.0;



  //TODO modify: null assigned to navBarTitle
  static final navBarTitle = null;
  static final textDefault = TextStyle(
    //fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: RSColor.textColorDefault,
  );

  static final headerLarge = TextStyle(
    fontSize: _textSizeLarge,
    color: RSColor.textColorStrong,
  );
}
