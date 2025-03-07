
import 'package:flutter/material.dart';

import '../../../app_colors.dart';
import '../../../app_dimensions.dart';
import '../../../utils.dart';

class DataSectionEditable extends StatefulWidget {
  const DataSectionEditable({
    super.key,
    required this.title,
    required this.data,
    this.iconData,
    this.isIconRequired = true,
    this.titleColor = AppColors.colorGrey,
    this.dataColor,
    this.dataMaxLines,
    this.isDataSelectable = false,
    this.onEditComplete,
  });

  final String title;
  final String data;
  final IconData? iconData;
  final bool isIconRequired;
  final Color titleColor;
  final Color? dataColor;
  final int? dataMaxLines;
  final bool isDataSelectable;
  final void Function(String)? onEditComplete;

  @override
  State<DataSectionEditable> createState() => _DataSectionEditableState();
}

class _DataSectionEditableState extends State<DataSectionEditable> {
  late String _data;
  @override
  void initState() {
    super.initState();
    _data = widget.data;
    widget.onEditComplete?.call(_data);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        /*final editedData = await _onEditTap(context, title: widget.title);
        if (editedData != null) {
          widget.onEditComplete?.call(editedData);
          _data = editedData;
          setState(() {});
        }*/
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.colorYellow,
          borderRadius: BorderRadius.circular(
            AppDimensions.smallBorderRadius,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.mediumMargin,
          horizontal: AppDimensions.mediumMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: widget.isIconRequired,
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 2.0),
                      Icon(
                        widget.iconData ?? Icons.arrow_circle_right_outlined,
                        size: 12.0,
                        color: widget.titleColor,
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
                    widget.title,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: widget.titleColor,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                  widget.isDataSelectable
                      ? SelectableText(
                    widget.data,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: widget.dataColor,
                    ),
                    maxLines: widget.dataMaxLines,
                  )
                      : Text(
                    _data,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: widget.dataColor,
                    ),
                    maxLines: widget.dataMaxLines,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.edit_outlined,
              color: AppColors.colorBlack,
              size: 25,
            )
          ],
        ),
      ),
    );
  }
/*
  Future<String?> _onEditTap(BuildContext context,
      {required String title}) async {
    return await AppUtils.showClosableDialog<String?>(
      context,
      child: EditAlertWidget(data: _data, title: title),
    );
  }*/
}
