import 'package:flutter/material.dart';
import 'package:graphs_flutter/widgets/rank_layout/no_rank_layout.dart';

import '../models/person_rank_model.dart';

class NoRankWidget extends StatelessWidget {
  const NoRankWidget({
    super.key, required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return NoRankLayout(
          rankModelList: rankModelList[index],
          index: index,
        );
      },
      itemCount: rankModelList.length,
    );
  }
}