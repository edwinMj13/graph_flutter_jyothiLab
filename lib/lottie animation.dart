import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphs_flutter/models/person_rank_model.dart';
import 'package:graphs_flutter/widgets/rank_layout/no_rank_layout.dart';
import 'package:graphs_flutter/widgets/rank_layout/rounded_rank_layout.dart';
import 'package:graphs_flutter/widgets/rank_widget.dart';
import 'package:graphs_flutter/widgets/tab_widget.dart';
import 'package:lottie/lottie.dart';

import 'widgets/no_rank_widget.dart';

class LottieAnim extends StatelessWidget {
  const LottieAnim({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 20,
              // ),
              Image.asset("assets/home_p.jpg",height: size.height*0.65,),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Leader Board"),
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabWidget(
                    color: Colors.blue,
                    title: "Daily",
                    titleColor: Colors.white,
                  ),
                  TabWidget(
                    color: Colors.white,
                    title: "Monthly",
                    titleColor: Colors.blue,
                  ),
                  TabWidget(
                    color: Colors.white,
                    title: "Yearly",
                    titleColor: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 10,),
           //   const RankedWidget(),
              NoRankWidget(size:size),
            ],
          ),
        ),
      ),
    );
  }
}


  getRankLayout(int index){
    if(index == 0){
      return RoundedRankLayout(
        rankModelList: rankModelList[index],
        index: index,
        rankSize: 35,
        titleSize: 15,
        trailingSize: 17,
        imageSize: 35,
      );
    }else if(index == 1){
      return RoundedRankLayout(
        rankModelList: rankModelList[index],
        index: index,
        rankSize: 30,
        titleSize: 14,
        trailingSize: 15,
        imageSize: 30,
      );
    }else if(index == 2){
      return RoundedRankLayout(
        rankModelList: rankModelList[index],
        index: index,
        rankSize: 25,
        titleSize: 13,
        trailingSize: 17,
        imageSize: 25,
      );
    }else{
      return NoRankLayout(
        rankModelList: rankModelList[index],
        index: index,
      );
    }
  }







// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   crossAxisAlignment: CrossAxisAlignment.end,
//   children: [
//     PersonTile(
//       color: Color(0xFFC0C0C0),
//       visibility: false,
//       barHeight: 130,
//       barWidth: 50,
//       rankList: rankModelList,
//     ),
//     SizedBox(
//       width: 10,
//     ),
//     PersonTile(
//       color: Colors.orange,
//       visibility: true,
//       barHeight: 150,
//       barWidth: 80,
//       rankList: rankModelList,
//     ),
//     SizedBox(
//       width: 10,
//     ),
//     PersonTile(
//       color: Colors.brown,
//       visibility: false,
//       barHeight: 100,
//       barWidth: 50,
//       rankList: rankModelList,
//     ),
//   ],
// ),
/*
class PersonTile extends StatelessWidget {
  PersonTile({
    super.key,
    this.color,
    required this.visibility,
    required this.barHeight,
    required this.barWidth,
    required this.rankList,
  });

  dynamic color;
  bool visibility;
  final double barHeight;
  final double barWidth;
  List<PersonRankModel> rankList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //Container(height: 100,width: 10,color: Colors.blue,),

        Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10))),
          height: barHeight,
          width: barWidth,
        ),
        Positioned(
          right: 0,
          left: 0,
          top: -50,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 40,
                child: SvgPicture.asset(rankList),
              ),
              if (visibility)
                Positioned(
                  top: -130,
                  left: -60,
                  //right: 0,
                  child: Lottie.asset(
                    "assets/ranklists/crown.json",
                    height: 200,
                    width: 200,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}*/
