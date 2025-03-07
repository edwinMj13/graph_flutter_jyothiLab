import 'package:flutter/material.dart';

import '../../app_colors.dart';
import '../../app_dimensions.dart';
import '../../utils.dart';

class PdpActionButton extends StatelessWidget {
  const PdpActionButton({
    super.key,
    required this.title,
    this.color = AppColors.colorPrimary,
    this.onTap,
    this.textColor = AppColors.colorWhite,
    this.iconData = Icons.check,
  });
  final String title;
  final Color color;
  final VoidCallback? onTap;
  final Color textColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.mediumMargin,
          vertical: AppDimensions.defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppDimensions.smallBorderRadius,
          ),
          border: Border.all(color: color),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppUtils.horizontalSpacer(),
          Icon(
            iconData,
            color: color,
            size: 15.0,
          )
        ]),
      ),
    );
  }
}
