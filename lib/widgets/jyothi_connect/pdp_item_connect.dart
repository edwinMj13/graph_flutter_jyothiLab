import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';
import '../../models/jconnect_pdp_list.dart';

class PdpCustomWidget extends StatelessWidget {
  const PdpCustomWidget({
    super.key,
    required this.item,
    required this.onEditCallback,
    required this.onDeleteCallback,
    required this.onVewLogCallback,
  });

  final JconnectViewPdpList item;
  final VoidCallback onEditCallback;
  final VoidCallback onDeleteCallback;
  final VoidCallback onVewLogCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.colorAccentLight, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      RichTextCustomWidget(
                          value: item.createdDate!, prefixText: "Created at: "),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichTextCustomWidget(
                    value: item.qn!,
                    prefixText: "KRA: ",
                    valueSize: 14,
                    textValueBold: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichTextCustomWidget(
                    value: item.expectedResult!,
                    prefixText: "Expected result:  ",
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichTextCustomWidget(
                        value: item.weightage!.toString(),
                        prefixText: "Weightage:  ",
                      ),
                      RichTextCustomWidget(
                        value: item.financialYear! ?? "N/A",
                        prefixText: "FY:  ",
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  // const DottedLine(
                  //   dashColor: AppColors.colorPrimary,
                  // ),
                ],
              )
            ),
            ActionButtons(
              onVewLogCallback: onVewLogCallback,
              isEdit: item.isEdit!,
              onEditCallback: onEditCallback,
              onDeleteCallback: onDeleteCallback,
            )
          ],
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.onVewLogCallback,
    required this.isEdit,
    required this.onEditCallback,
    required this.onDeleteCallback,
  });

  final VoidCallback onVewLogCallback;
  final bool isEdit;
  final VoidCallback onEditCallback;
  final VoidCallback onDeleteCallback;

  @override
  Widget build(BuildContext context) {
    print(isEdit);
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: InkWell(
            onTap: () => onVewLogCallback(),
            child: ViewLogsWidget(),
          ),
        ),
        Container(
          color: AppColors.colorWhite,
          width: 0.5,
        ),
        Expanded(
          child: InkWell(
            onTap: () => onEditCallback(),
            child: EditWidget(
              isEdit: isEdit,
            ),
          ),
        ),
        Container(
          color: AppColors.colorWhite,
          width: 0.5,
        ),
        Expanded(
          child:
              InkWell(onTap: () => onDeleteCallback(), child: DeleteWidget()),
        ),
      ],
    );
  }
}

class DeleteWidget extends StatelessWidget {
  const DeleteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: AppColors.colorPrimaryLight,
      child: const Icon(
        Icons.delete,
        size: 15,
        color: AppColors.colorRed,
      ),
    );
  }
}

class EditWidget extends StatelessWidget {
  const EditWidget({
    super.key,
    required this.isEdit,
  });

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: AppColors.colorPrimaryLight,
      child: Icon(
        Icons.edit,
        size: 15,
        color: !isEdit ? Colors.grey.shade300 : AppColors.colorPrimary,
      ),
    );
  }
}

class ViewLogsWidget extends StatelessWidget {
  const ViewLogsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: AppColors.colorPrimaryLight,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "View Logs",
            style: TextStyle(fontSize: 13, color: AppColors.colorPrimary),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 13,
            color: AppColors.colorPrimary,
          )
        ],
      ),
    );
  }
}

class RichTextCustomWidget extends StatelessWidget {
  const RichTextCustomWidget({
    super.key,
    required this.value,
    required this.prefixText,
    this.valueSize = 13,
    this.textPrefBold = FontWeight.normal,
    this.textValueBold = FontWeight.normal,
    this.prefTextColor = Colors.grey,
    this.valueTextColor = Colors.black,
  });

  final String value;
  final String prefixText;
  final double valueSize;
  final FontWeight textPrefBold;
  final FontWeight textValueBold;
  final Color prefTextColor;
  final Color valueTextColor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      softWrap: true,
      overflow: TextOverflow.visible,
      text: TextSpan(
        text: prefixText,
        style: TextStyle(
            fontWeight: textPrefBold, fontSize: 13, color: prefTextColor),
        children: [
          TextSpan(
            text: value,
            style: TextStyle(
                fontWeight: textValueBold,
                fontSize: valueSize,
                color: valueTextColor),
          )
        ],
      ),
    );
  }
}
