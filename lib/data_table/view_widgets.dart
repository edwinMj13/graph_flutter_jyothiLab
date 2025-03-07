import 'package:flutter/material.dart';

import '../app_colors.dart';

class ViewPdfF extends StatelessWidget {
  const ViewPdfF({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(text,style: Theme.of(context).textTheme.bodySmall?.copyWith(
      color: AppColors.colorGreen,)),
        const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.greenAccent,),
      ],
    );
  }
}


