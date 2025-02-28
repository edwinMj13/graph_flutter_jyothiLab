import 'package:flutter/material.dart';

import '../lottie animation.dart';
import '../models/person_rank_model.dart';
import '../utils.dart';

class RankItem extends StatelessWidget {
  const RankItem({
    super.key,
    required this.rankModelList,
    required this.index,
    required this.titleSize,
    required this.trailingSize,
    required this.rankSize,
    required this.imageSize,
  });

  final PersonRankModel rankModelList;
  final int index;
  final double imageSize;
  final int titleSize;
  final int trailingSize;
  final double rankSize;

  @override
  Widget build(BuildContext context) {
    return Card(
    //  elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical:2),
      //padding: getRankSize(index),
      //decoration: getBakgroundRank(index),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: getBackgroundRank(index),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(

          leading: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getRankWidget( index,rankSize),
              CircleAvatar(
                radius: imageSize,
                child: Image.asset(rankModelList.image,),
              ),
            ],
          ),
          title: Text(rankModelList.name,style: TextStyle(fontSize: titleSize.toDouble()),),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Text(
                rankModelList.points.toStringAsFixed(0),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  dynamic getBackgroundRank(int index) {
    if(index==0){
      return  Colors.orange[100];
    }else if(index==1){
      return const Color(0xFFB0C0C0);
    }else if(index==2){
      return  Colors.orangeAccent[100];
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
