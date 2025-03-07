import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:graphs_flutter/app_colors.dart';
import 'package:graphs_flutter/constants.dart';
import 'package:graphs_flutter/models/jconnect_pdp_list.dart';
import 'package:graphs_flutter/models/pdp_review_user_details_list.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/pdp_approve_item.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/pdp_item_connect.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/userwise_pdp_details_widget.dart';

class PdpScreen extends StatelessWidget {
  const PdpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: pdpList.length,
                  itemBuilder: (context, index) {
                    final item = pdpList[index];
                    //return UserWisePdpDetailsWidget(item: item);
                      return PdpCustomWidget(item: item, onEditCallback: () {  }, onDeleteCallback: () {  }, onVewLogCallback: () {  }, );
                  },
                ),
              ),
              /*Expanded(
                child: ListView.builder(
                  itemCount: pdpList.length,
                  itemBuilder: (context, index) {
                    final item = pdpList[index];
                    return PdpCustomWidget(item: item,
                        onEditCallback: () => onEdit(),
                        onDeleteCallback:()=> onDeleteCallback,
                        onVewLogCallback:()=> onVewLogCallback);
                  },
                ),
              ),*/
            ],
          ),
        ));
  }

  Widget onEdit() {
    return const SizedBox.shrink();
  }

  void onDeleteCallback() {
  }

  void onVewLogCallback() {
  }

  void onEditTap() {
  }
}



List<JconnectViewPdpList> pdpList = [
  JconnectViewPdpList(
    status: "Single",
    id: 345345,
    expectedResult: "The weather today is Sunny",
    isActive: true,
    isEdit: false,
    qn: "What about the weather today",
    result: 34,
    weightage: 78,
    createdDate: "12-2-25",
    financialYear: "2024-2025",
    logsCount: 8,
    type: "tr",
  ),
  JconnectViewPdpList(
    status: "Single",
    id: 345345,
    expectedResult: "I like Everyone",
    isActive: true,
    isEdit: false,
    qn: "What are the types of people you like",
    result: 34,
    weightage: 78,
    createdDate: "iouiygdbjfekigmd;emldkhvrjcfekovgeiorutdkfj dnbgfrmke srngklds,vkldjijghue tvhsmejoinrghcjoirkhg yiudhgirgjnurjgmfsr kjn gskrdmviodsfnhgvlkdfm njgmvskdblh",
    financialYear: "2024-2025",
    logsCount: 8,
    type: "tr",
  ),
  JconnectViewPdpList(
    status: "Single",
    id: 345345,
    expectedResult: "I prefer Attitude",
    isActive: true,
    isEdit: false,
    qn: "Some has greatest abilities some has attitudes, What will you prefer?",
    result: 34,
    weightage: 78,
    createdDate: "12-2-25",
    financialYear: "2024-2025",
    logsCount: 8,
    type: "tr",
  ),
  JconnectViewPdpList(
    status: "Single",
    id: 345345,
    expectedResult: "Life's Good, LG!",
    isActive: true,
    isEdit: true,
    qn: "How's life?",
    result: 34,
    weightage: 78,
    createdDate: "12-2-25",
    financialYear: "2024-2025",
    logsCount: 8,
    type: "tr",
  ),
  JconnectViewPdpList(
    status: "Single",
    id: 345345,
    expectedResult: "The expectancy topic is out of context, you can answer anything on this",
    isActive: true,
    isEdit: false,
    qn: "How long is the life expectancy of a turtle based on your experience here in earth?",
    result: 34,
    weightage: 78,
    createdDate: "12-2-25",
    financialYear: "2024-2025",
    logsCount: 8,
    type: "tr",
  ),
  JconnectViewPdpList(
    status: "Single",
    id: 345345,
    expectedResult: "I'm trying",
    isActive: true,
    isEdit: false,
    qn: "A lot of people are going here and there to make lives better, what are you doing?",
    result: 34,
    weightage: 78,
    createdDate: "12-2-25",
    financialYear: "2024-2025",
    logsCount: 8,
    type: "tr",
  ),
];
