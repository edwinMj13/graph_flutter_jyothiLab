import 'package:flutter/material.dart';

class InbuiltDataTable extends StatelessWidget {
  const InbuiltDataTable({super.key,required this.data,required this.columns});

  final List<Map<String,dynamic>> data;
  final List<String> columns;
  @override
  Widget build(BuildContext context) {
    return DataTable(
      dataRowMaxHeight: getRowHeight(columns[1].length),
      //dataRowMaxHeight:columns[index]=="ViewMax"?100:null,
      columns: List.generate(columns.length, (index)=> DataColumn(
        //columnWidth: FixedColumnWidth(columns[index]=="ViewMax"?100:50),
        label: Text(columns[index], style: const TextStyle(fontStyle: FontStyle.italic)),
      ),),
      rows: List.generate(data.length, (index){
        print(data[index][columns[4]]);
        return DataRow(
        cells: <DataCell>[
          DataCell(Text(data[index][columns[0]])),
          DataCell(Text(data[index][columns[1]],softWrap: true,overflow: TextOverflow.visible,)),
          DataCell(Text(data[index][columns[2]])),
          DataCell(Container(child: data[index][columns[3]],)),
          DataCell(Text(data[index][columns[4]])),
          DataCell(Container(child: data[index][columns[5]],)),
        ],
      );},),
    );
  }

  double getRowHeight(int length){
    if(length<=15){
      return 20;
    }else if(length<30){
      return 40;
    }else if(length<45){
      return 60;
    }else {
      return 80;
    }
  }

}
