import 'package:flutter/material.dart';
import 'package:graphs_flutter/data_table/inbuilt_data_table.dart';
import 'package:graphs_flutter/data_table/view_widgets.dart';
import 'package:graphs_flutter/widgets/jyothi_connect/pdp_screen.dart';

import 'data_table/data_table.dart';
import 'data_table/sync_example.dart';
import 'lottie animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: PdpScreen(),
      // home: MyHomePage(
      //   data: const [{
      //     "Id":0,
      //     "Name":"Edwin",
      //     "Description":"The Flutter DataTable or DataGrid is used to display and manipulate data in a tabular view. "
      //         "It is built from the ground up to achieve the best possible performance, "
      //         "even when loading large amounts data.",
      //     "Status":"Bad",
      //   },
      //     {"Id":1,
      //       "Name":"Piuyhf",
      //       "Description":"The Flutter DataTable or DataGrid is used to display and manipulate data in a tabular view. "
      //           "It is built from the ground up to achieve the best possible performance, "
      //           "even when loading large amounts data.",
      //       "Status":"Bad",},
      //     {
      //       "Id":2,
      //       "Name":"Wertyu",
      //       "Description":"The Flutter DataTable or.",
      //       "Status":"Bad",
      //     },
      //     {"Id":3,
      //       "Name":"Qwert",
      //       "Description":"The Flutter DataTable or DataGrid is used to display and manipulate data in a tabular view. ",
      //       "Status":"Bad",}],
      //   columns: const ["Id", "Name", "Description", "Status"],
      // ),

      // home:   const InbuiltDataTable(
      //   columns: [
      //     "Id",
      //     "Name",
      //     "Age",
      //     "ViewMax",
      //     "Status",
      //     "Actions",
      //   ],
      //   data: [
      //     {
      //       "Id": "34",
      //       "Name":
      //       "Edwin baby is  a good person who wants to go an so many things and on and on and on",
      //       "Age": "23",
      //       "ViewMax":ViewPdf(text: 'The status is Not',),
      //       "Status": "Married",
      //       "Actions":Icon(Icons.delete),
      //     },
      //     {
      //       "Id": "23",
      //       "Name": "Edwin",
      //       "Age": "89",
      //       "ViewMax":ViewPdf(text: 'The status is Not',),
      //       "Status": "Single",
      //       "Actions":Icon(Icons.account_balance),
      //     },
      //     {
      //       "Id": "67",
      //       "Name":
      //       "Edwin baby is  a good person who ",
      //       "Age": "73",
      //       "ViewMax":ViewPdf(text: 'The status is Not PDF',),
      //       "Status": "Divorced",
      //       "Actions":Icon(Icons.access_alarms_sharp),
      //     }
      //   ],
      // ),
      // const DynamicDataGrid(
      //   boldColumns: [1,2,3,4,5,6,7],
      //   title: "qwerty",
      //   columns: [
      //     "Id",
      //     "Name",
      //     "Age",
      //     "ViewMax",
      //     "Status",
      //     "Actions",
      //   ],
      //   data: [
      //     {
      //       "Id": "34",
      //       "Name":
      //           "Edwin baby is  a good person who wants to go an so many things and on and on and on",
      //       "Age": "23",
      //       "ViewMax":ViewPdf(text: 'The status is Not',),
      //       "Status": "Married",
      //       "Actions":Icon(Icons.delete),
      //     },
      //     {
      //       "Id": "23",
      //       "Name": "Edwin",
      //       "Age": "89",
      //       "ViewMax":ViewPdf(text: 'The status is Not',),
      //       "Status": "Single",
      //       "Actions":Icon(Icons.account_balance),
      //     },
      //     {
      //       "Id": "67",
      //       "Name":
      //           "Edwin baby is  a good person who ",
      //       "Age": "73",
      //       "ViewMax":ViewPdf(text: 'The status is Not PDF',),
      //       "Status": "Divorced",
      //       "Actions":Icon(Icons.access_alarms_sharp),
      //     }
      //   ],
      // ),
    );
  }
}
