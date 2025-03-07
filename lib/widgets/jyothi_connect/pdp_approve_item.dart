import 'package:flutter/material.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/widgets/dot.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/widgets/indicator_widget.dart';

import '../../app_colors.dart';
import '../../models/pdp_review_user_details_list.dart';
import '../../utils.dart';

class PdpApproveItem extends StatelessWidget {
  const PdpApproveItem({
    super.key,
    this.expansionIconData = Icons.chevron_right,
    this.onTap,
    required this.item,
  });

  final IconData expansionIconData;
  final VoidCallback? onTap;
  final PdpReviewUserDetailsList? item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        children: [
                          const Dot(color: AppColors.colorAccent),
                          AppUtils.horizontalSpacer(),
                          Text(item?.userName ?? '',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          AppUtils.horizontalSpacer(),
                          Text('(${item?.userId})'),
                          AppUtils.horizontalSpacer(),
                          IndicatorWidget(
                              text: item?.status ?? '',
                              color: AppColors.colorGreen),
                        ],
                      ),
                    ),
                  ],
                ),
                AppUtils.verticalSpacer(),
                Row(
                  children: [
                    const Dot(color: AppColors.colorWhite),
                    AppUtils.horizontalSpacer(),
                    Text(
                      item?.designation ?? '',
                    ),
                    AppUtils.horizontalSpacer(),
                    Text('- ${item?.dept}'),
                    AppUtils.horizontalSpacer(),
                    Text('- FY : ${item?.financialYear}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
          AppUtils.horizontalSpacer(),
          Icon(expansionIconData),
        ],
      ),
    );
  }
}

List<PdpReviewUserDetailsList> pdpReviewList = [
  PdpReviewUserDetailsList(
    type: "Pending",
    financialYear: "2024-2025",
    createdDate: "12-2-25",
    totalWeightage: 100,
    result: 87,
    isEditable: true,
    isActive: true,
    status: "pending",
    userName: "edwin",
    attribute1: "erf",
    attribute2: "kjfn",
    attribute3: "kief",
    dept: "IT",
    designation: "Developer",
    location: "Mumbai",
    qnCount: "34",
    userId: "23874673",
    zone: "South",
  ),
  PdpReviewUserDetailsList(
    type: "Pending",
    financialYear: "2024-2025",
    createdDate: "12-2-25",
    totalWeightage: 100,
    result: 87,
    isEditable: true,
    isActive: true,
    status: "pending",
    userName: "edwin",
    attribute1: "erf",
    attribute2: "kjfn",
    attribute3: "kief",
    dept: "IT",
    designation: "Developer",
    location: "Mumbai",
    qnCount: "34",
    userId: "23874673",
    zone: "South",
  ),
  PdpReviewUserDetailsList(
    type: "Pending",
    financialYear: "2024-2025",
    createdDate: "12-2-25",
    totalWeightage: 100,
    result: 87,
    isEditable: true,
    isActive: true,
    status: "pending",
    userName: "edwin",
    attribute1: "erf",
    attribute2: "kjfn",
    attribute3: "kief",
    dept: "IT",
    designation: "Developer",
    location: "Mumbai",
    qnCount: "34",
    userId: "23874673",
    zone: "South",
  ),
  PdpReviewUserDetailsList(
    type: "Pending",
    financialYear: "2024-2025",
    createdDate: "12-2-25",
    totalWeightage: 100,
    result: 87,
    isEditable: true,
    isActive: true,
    status: "pending",
    userName: "edwin",
    attribute1: "erf",
    attribute2: "kjfn",
    attribute3: "kief",
    dept: "IT",
    designation: "Developer",
    location: "Mumbai",
    qnCount: "34",
    userId: "23874673",
    zone: "South",
  ),
  PdpReviewUserDetailsList(
    type: "Pending",
    financialYear: "2024-2025",
    createdDate: "12-2-25",
    totalWeightage: 100,
    result: 87,
    isEditable: true,
    isActive: true,
    status: "pending",
    userName: "edwin",
    attribute1: "erf",
    attribute2: "kjfn",
    attribute3: "kief",
    dept: "IT",
    designation: "Developer",
    location: "Mumbai",
    qnCount: "34",
    userId: "23874673",
    zone: "South",
  ),
  PdpReviewUserDetailsList(
    type: "Pending",
    financialYear: "2024-2025",
    createdDate: "12-2-25",
    totalWeightage: 100,
    result: 87,
    isEditable: true,
    isActive: true,
    status: "pending",
    userName: "edwin",
    attribute1: "erf",
    attribute2: "kjfn",
    attribute3: "kief",
    dept: "IT",
    designation: "Developer",
    location: "Mumbai",
    qnCount: "34",
    userId: "23874673",
    zone: "South",
  ),
  PdpReviewUserDetailsList(
    type: "Pending",
    financialYear: "2024-2025",
    createdDate: "12-2-25",
    totalWeightage: 100,
    result: 87,
    isEditable: true,
    isActive: true,
    status: "pending",
    userName: "edwin",
    attribute1: "erf",
    attribute2: "kjfn",
    attribute3: "kief",
    dept: "IT",
    designation: "Developer",
    location: "Mumbai",
    qnCount: "34",
    userId: "23874673",
    zone: "South",
  ),
];
