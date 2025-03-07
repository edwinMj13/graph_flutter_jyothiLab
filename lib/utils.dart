import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'app_dimensions.dart';

class AppUtils{
  static Widget verticalSpacer({
    double height = AppDimensions.defaultMargin,
  }) =>
      SizedBox(height: height);
  static Widget horizontalSpacer({
    double width = AppDimensions.defaultMargin,
  }) =>
      SizedBox(width: width);
  static bool hasText(String? text) =>
      text != null && convertToNonNullableBool(text.trim().isNotEmpty);



  static bool convertToNonNullableBool(bool? value) => value ?? false;

}




Widget getRankWidget(int index,double rankSize) {
  if (index == 0) {
    return svgPicture("assets/ranklists/1st-place-medal.svg",rankSize);
  }
  if (index == 1) {
    return svgPicture("assets/ranklists/2nd-place-medal.svg",rankSize);
  }
  if (index == 2) {
    return svgPicture("assets/ranklists/3rd-place-medal.svg",rankSize);
  } else {
    return SizedBox(
      height: 30,
      width: 30,
      child: Center(
        child: Text(
          (index + 1).toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

SvgPicture svgPicture(assets, double rankSize) => SvgPicture.asset(assets,height: rankSize,width: rankSize,);
