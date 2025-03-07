import 'package:flutter/material.dart';
import 'package:graphs_flutter/data_table/view_widgets.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../app_colors.dart';
import '../app_dimensions.dart';

class DynamicDataGrid extends StatefulWidget {
  const DynamicDataGrid({
    super.key,
    required this.columns,
    required this.data,
    this.title,
    this.headerColor,
    this.boldColumns = const [0],
  });

  final List<String> columns;
  final List<Map<String, dynamic>> data;
  final String? title;
  final Color? headerColor;
  final List<int> boldColumns;

  @override
  State<DynamicDataGrid> createState() => _DynamicDataGridState();
}

class _DynamicDataGridState extends State<DynamicDataGrid> {
  late DynamicDataGridSource _dataGridSource;

  @override
  void initState() {
    super.initState();
    _dataGridSource = DynamicDataGridSource(
        context, widget.data, widget.columns, widget.boldColumns);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data.isEmpty) return const SizedBox.shrink();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: widget.title != null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title ?? '',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: AppColors.colorGrey,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                // AppUtils.verticalSpacer(),
              ],
            ),
          ),
          SfDataGridTheme(
            data: SfDataGridThemeData(
              headerColor:
                  widget.headerColor ?? AppColors.colorGrey.withAlpha(70),
              gridLineColor: AppColors.colorHighlight1Lighter,
              frozenPaneLineColor: AppColors.colorHighlight1Lighter,
            ),
            child: SfDataGrid(
              shrinkWrapRows: true,
              verticalScrollPhysics: const NeverScrollableScrollPhysics(),
              source: _dataGridSource,
              onQueryRowHeight: (details) {
                return details.getIntrinsicRowHeight(details.rowIndex);
              },
              columns: widget.columns
                  .map(
                    (col) => GridColumn(
                      width: col == "ViewMax" ? 200 : 100,
                      visible: true,
                      columnName: col,
                      label: Container(
                        padding:
                            const EdgeInsets.all(AppDimensions.defaultMargin),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          col,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.colorBlack,
                                  ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              //columnWidthMode: ColumnWidthMode.fitByCellValue,
              //isScrollbarAlwaysShown: true,

              frozenRowsCount: 0,
              frozenColumnsCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class DynamicDataGridSource extends DataGridSource {
  DynamicDataGridSource(
      this.context, this.data, this.columns, this.boldColumns) {
    buildDataGridRows();
  }

  final List<Map<String, dynamic>> data;
  final List<String> columns;
  late List<DataGridRow> _dataGridRows;
  final BuildContext context;
  final List<int> boldColumns;

  void buildDataGridRows() {
    _dataGridRows = data.map<DataGridRow>((rowData) {
      return DataGridRow(
        cells: columns.map((col) {
              print(rowData);
            print(col);
          return rowData.containsKey(col)
              ? DataGridCell<dynamic>(
                  columnName: col,
                  value: rowData[col],
                )
              : DataGridCell<dynamic>(columnName: col, value: null);
        }).toList(),
      );
    }).toList();
  }

  @override
  List<DataGridRow> get rows => _dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: List.generate(
        row.getCells().length,
        (index) {
          final cell = row.getCells().elementAt(index);
          print(cell.value.runtimeType);

          if (cell.value is Widget) {
            return Container(
              alignment: Alignment.centerLeft,
              color: AppColors.colorWhite,
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0, vertical: 8.0), //const EdgeInsets.all(8.0),
              child: cell.value,
            );
          }

           if (cell.value != null) {
            final isBold = boldColumns.contains(index);
            return Container(
              color: AppColors.colorWhite,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cell.value.toString(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.colorBlack,
                    fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
                softWrap: true,
                overflow: TextOverflow.visible,
                //maxLines: null,
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}

class ViewPdf extends StatelessWidget {
  const ViewPdf({super.key,required this.text});
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
/*
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const DynamicDataGrid(
        boldColumns: [1,2,3,4,5,6,7],
        title: "qwerty",
        columns: [
          "Id",
          "Name",
          "Age",
          "ViewMax",
          "Status",
          "Actions",
        ],
        data: [
          {
            "Id": "34",
            "Name":
            "Edwin baby is  a good person who wants to go an so many things and on and on and on",
            "Age": "23",
            "ViewMax":ViewPdf(text: 'The status is Not',),
            "Status": "Married",
            "Actions":Icon(Icons.delete),
          },
          {
            "Id": "23",
            "Name": "Edwin",
            "Age": "89",
            "ViewMax":ViewPdf(text: 'The status is Not',),
            "Status": "Single",
            "Actions":Icon(Icons.account_balance),
          },
          {
            "Id": "67",
            "Name":
            "Edwin baby is  a good person who ",
            "Age": "73",
            "ViewMax":ViewPdf(text: 'The status is Not PDF',),
            "Status": "Divorced",
            "Actions":Icon(Icons.access_alarms_sharp),
          }
        ],
      ),
    );
  }
}
*/
