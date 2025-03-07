import 'package:flutter/material.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/pdp_item_connect.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/widgets/data_section.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/widgets/data_section_editable.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/widgets/data_section_text_field.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/widgets/loading_button.dart';

import '../../app_colors.dart';
import '../../app_dimensions.dart';
import '../../device_utils.dart';
import '../../models/pdp_review_user_qn_details.dart';
import '../../utils.dart';

class UserWisePdpDetailsWidget extends StatelessWidget {
  const UserWisePdpDetailsWidget({super.key, required this.item});

  final PdpReviewUserQnDetailsList? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 4)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  RichTextCustomWidget(
                    prefixText: "KRA: ",
                    value: item?.questionare ?? 'N/A',
                    textValueBold: FontWeight.bold,
                  ),
                  SizedBox(height: 4),
                  RichTextCustomWidget(
                      value:
                          "${item?.weightage!.toStringAsFixed(0)}",
                      prefixText: "Weightage: "),
                  const SizedBox(height: 4),
                  RichTextCustomWidget(
                      value: "${item?.expectedResult!}",
                      prefixText: "Expected Result: "),
                  const SizedBox(height: 4),
                  RichTextCustomWidget(
                    value: item!.status!,
                    prefixText: "Status: ",
                    valueTextColor: getStatusColor(item!.status!),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Remarks: ",
                        style:
                            TextStyle(fontSize: 13, color: AppColors.colorGrey),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(5),
                        constraints: const BoxConstraints(
                          minHeight: 70,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        child: Text(
                          item!.remarks!,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          style: const TextStyle(fontSize: 13,color: Colors.grey),
                        ),
                      ),const SizedBox(height: 5,),
                    ],
                  ),
                ],
              ),
            ),
            UserwiseActionButtons(
                onVewLogCallback: () {},
                isEdit: item!.isEditable!,
                onEditCallback: () {},
                onDeleteCallback: () {})
          ],
        ),
      ),
    );
  }
}

class UserwiseActionButtons extends StatelessWidget {
  const UserwiseActionButtons({
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
            child: const ViewLogsWidget(),
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

      ],
    );
  }
}

Color getStatusColor(String status) {
  if (status == "Approved") {
    return AppColors.colorGreen;
  } else if (status == "Pending") {
    return AppColors.colorRed;
  } else {
    return AppColors.colorPrimary;
  }
}

List<PdpReviewUserQnDetailsList> pdpQnList = [
  PdpReviewUserQnDetailsList(
    status: "Pending",
    isActive: true,
    isEditable: true,
    result: 34,
    totalWeightage: 100,
    weightage: 67,
    remarks: "This is the thing of the se things and the are said to be done.",
    questionare:
        "How well do you manage time and prioritize tasks effectively?",
    id: 4567,
    expectedResult: "kjhgdbukhbn djbdsjbfu  jhdbhjf",
    employeeId: "435678667",
  ),
  PdpReviewUserQnDetailsList(
    status: "Approved",
    isActive: true,
    isEditable: false,
    result: 34,
    totalWeightage: 100,
    weightage: 67,
    remarks: "nill",
    questionare:
        "Have you achieved your key performance indicators (KPIs) this quarter?",
    id: 4567,
    expectedResult: "kjhgdbukhbn djbdsjbfu  jhdbhjf",
    employeeId: "435678667",
  ),
  PdpReviewUserQnDetailsList(
    status: "Pending",
    isActive: true,
    isEditable: true,
    result: 34,
    totalWeightage: 100,
    weightage: 67,
    remarks: "nill",
    questionare:
        "What leadership challenges have you faced, and how did you overcome them?",
    id: 4567,
    expectedResult: "kjhgdbukhbn djbdsjbfu  jhdbhjf",
    employeeId: "435678667",
  ),
  PdpReviewUserQnDetailsList(
    status: "Pending",
    isActive: true,
    isEditable: true,
    result: 34,
    totalWeightage: 100,
    weightage: 67,
    remarks: "nill",
    questionare:
        "How would you describe the support you receive from your manager and team members? "
        "Are there any specific areas where you feel additional guidance or "
        "resources would be beneficial?",
    id: 4567,
    expectedResult: "kjhgdbukhbn djbdsjbfu  jhdbhjf",
    employeeId: "435678667",
  ),
  PdpReviewUserQnDetailsList(
    status: "Pending",
    isActive: true,
    isEditable: true,
    result: 34,
    totalWeightage: 100,
    weightage: 67,
    remarks: "nill",
    questionare:
        "In what ways do you feel your current job role aligns with your "
        "long-term career goals? Are there any learning or development opportunities "
        "that could help you progress further?",
    id: 4567,
    expectedResult: "kjhgdbukhbn djbdsjbfu  jhdbhjf",
    employeeId: "435678667",
  ),
  PdpReviewUserQnDetailsList(
    status: "Pending",
    isActive: true,
    isEditable: true,
    result: 34,
    totalWeightage: 100,
    weightage: 67,
    remarks: "nill",
    questionare:
        "Have you received any notable feedback from clients or customers in the past year? If so, what was it, and how did it influence the way you approach your work?",
    id: 4567,
    expectedResult: "kjhgdbukhbn djbdsjbfu  jhdbhjf",
    employeeId: "435678667",
  ),
];
