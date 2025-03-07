import 'package:flutter/material.dart';

import '../../models/person_rank_model.dart';
import '../../utils.dart';


class NoRankLayout extends StatelessWidget {
   NoRankLayout({
    super.key,
    required this.rankModelList,
    required this.index,
  });

  final PersonRankModel rankModelList;
  final int index;
  // final bool isShowProgressEnd=true;
  // static const Color colorDark = Color(0xff1A1A1A);
  //
  // static const Color colorHighlight1 = Color(0xff30C9C9);
  // static const Color colorHighlight2 = Color(0xffD5A809);
  // static const Color colorHighlight3 = Color(0xffBC86E7);
  // static const Color colorHighlight4 = Color(0xffFF9900);
  //
  // Color highlightColor = getColorByIndex([
  // colorHighlight1,
  // colorHighlight2,
  // colorHighlight3,
  // colorHighlight4,
  // ], 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: getRankSize(index),
      //decoration: getBakgroundRank(index),
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.centerLeft,
      //     end: Alignment.centerRight,
      //     colors: isShowProgressEnd
      //         ? [highlightColor, colorDark]
      //         : [colorDark, highlightColor],
      //   ),
      // ),
      //color: getBackgroundRank(index),
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getRankWidget( index,13),
            CircleAvatar(
              child: Image.asset(rankModelList.image),
            ),
          ],
        ),
        title: Text(rankModelList.name,style: TextStyle(fontSize: 12),),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.orange,
              size: 15,
            ),
            Text(
              rankModelList.points.toStringAsFixed(0),
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
  // static Color getColorByIndex(List<Color> colors, int index) {
  // if (colors.isEmpty) {
  // return colorHighlight1;
  // }
  // return colors[index % colors.length];
  // }

  dynamic getBackgroundRank(int index) {
    if(index==0){
      return  Colors.orange;
    }else if(index==1){
      return const Color(0xFFC0C0C0);
    }else if(index==2){
      return  Colors.amberAccent;
    }else{
      return Colors.white;
    }
  }

// getRankSize(int index) {
//   if(index==0){
//     return EdgeInsets.symmetric(vertical: 15,horizontal: 15);
//   }
//   else if(index==1){
//     return EdgeInsets.symmetric(vertical: 15,horizontal: 15);
//   }
//   else if(index==2){
//     return EdgeInsets.symmetric(vertical: 15,horizontal: 15);
//   }else{
//     return EdgeInsets.all(0.0);
//   }
// }
}