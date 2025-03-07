import 'package:flutter/material.dart';

import '../../../app_colors.dart';
import '../../../app_dimensions.dart';
import '../../../utils.dart';
import 'customizable_text_field.dart';

class DataSectionTextField extends StatelessWidget {
  const DataSectionTextField({
    super.key,
    required this.title,
    required this.data,
    this.iconData,
    this.isIconRequired = true,
    this.titleColor = AppColors.colorGrey,
    this.dataColor,
    this.dataMaxLines,
    this.controller,
    this.hintText,
    this.maxLines,
  });

  final String title;
  final String data;
  final IconData? iconData;
  final bool isIconRequired;
  final Color titleColor;
  final Color? dataColor;
  final int? dataMaxLines;
  final TextEditingController? controller;
  final String? hintText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: isIconRequired,
          child: Row(
            children: [
              Column(
                children: [
                  const SizedBox(height: 2.0),
                  Icon(
                    iconData ?? Icons.arrow_circle_right_outlined,
                    size: 12.0,
                    color: titleColor,
                  ),
                ],
              ),
              AppUtils.horizontalSpacer(width: AppDimensions.smallMargin),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 12.0,
                    color: titleColor,
                    textBaseline: TextBaseline.alphabetic),
              ),
              AppUtils.verticalSpacer(height: AppDimensions.smallMargin),
              CustomizableTextField(
                hintText: hintText,
                isDense: true,
                maxLines: maxLines,
                isHintOnly: true,
                textEditingController: controller,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: AppDimensions.defaultMargin,
                  horizontal: AppDimensions.defaultMargin,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
