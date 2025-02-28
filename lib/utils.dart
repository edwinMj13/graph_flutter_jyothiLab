import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

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
