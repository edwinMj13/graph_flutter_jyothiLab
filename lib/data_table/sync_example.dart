import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

void main() {
  runApp(MyApp());
}

/// The application that contains datagrid on it.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Syncfusion DataGrid Demo',
      theme: ThemeData(useMaterial3: false),
      home: MyHomePage(
        data: const [
          {
            "Id": 0,
            "Name": "Edwin",
            "Discription":
                "The Flutter DataTable or DataGrid is used to display and manipulate data in a tabular view. "
                    "It is built from the ground up to achieve the best possible performance, "
                    "even when loading large amounts data.",
            "Status": "Bad",
          },
          {
            "Id": 1,
            "Name": "Edwin",
            "Discription":
                "The Flutter DataTable or DataGrid is used to display and manipulate data in a tabular view. "
                    "It is built from the ground up to achieve the best possible performance, "
                    "even when loading large amounts data.",
            "Status": "Bad",
          },
          {
            "Id": 2,
            "Name": "Edwin",
            "Discription": "The Flutter DataTable or.",
            "Status": "Bad",
          },
          {
            "Id": 3,
            "Name": "Edwin",
            "Discription":
                "The Flutter DataTable or DataGrid is used to display and manipulate data in a tabular view. ",
            "Status": "Bad",
          }
        ],
        columns: const ["Id", "Name", "Discription", "Status"],
      ),
    );
  }
}

/// The home page of the application which hosts the datagrid.
class MyHomePage extends StatefulWidget {
  /// Creates the home page.
  MyHomePage({Key? key, required this.data, required this.columns})
      : super(key: key);
  List<Map<String, dynamic>> data;
  List<String> columns;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    //employees = getEmployeeData();
    employeeDataSource =
        EmployeeDataSource(employeeData: widget.data, columns: widget.columns);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter DataGrid'),
      ),
      body: SfDataGridTheme(
        data: SfDataGridThemeData(
          headerHoverColor: Colors.red,
          currentCellStyle: DataGridCurrentCellStyle(borderColor: Colors.purple, borderWidth: 5),
          columnDragIndicatorColor: Colors.blue,
          frozenPaneLineColor: Colors.orange,rowHoverColor: Colors.blueGrey,
        ),
        child: SfDataGrid(shrinkWrapColumns: true,
          onQueryRowHeight: (details){
           return details.getIntrinsicRowHeight(details.rowIndex);
          },
            source: employeeDataSource,
            //columnWidthMode: ColumnWidthMode.auto,
            columns: List.generate(widget.columns.length, (index) {
              return GridColumn(
                width: widget.columns[index] == "Description"?200:100,
                  columnName: widget.columns[index],
                  label: Container(
                      //padding: EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: Text(
                        widget.columns[index],
                        style: TextStyle(color: Colors.black),
                      )));
            })),
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(10001, 'James', 'Project Lead', 20000),
      Employee(10002, 'Kathryn', 'Manager', 30000),
      Employee(10003, 'Lara', 'Developer', 15000),
      Employee(10004, 'Michael', 'Designer', 15000),
      Employee(10005, 'Martin', 'Developer', 15000),
      Employee(10006, 'Newberry', 'Developer', 15000),
      Employee(10007, 'Balnc', 'Developer', 15000),
      Employee(10008, 'Perry', 'Developer', 15000),
      Employee(10009, 'Gable', 'Developer', 15000),
      Employee(10010, 'Grimes', 'Developer', 15000)
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Employee {
  /// Creates the employee class with required details.
  Employee(this.id, this.name, this.designation, this.salary);

  /// Id of an employee.
  final int id;

  /// Name of an employee.
  final String name;

  /// Designation of an employee.
  final String designation;

  /// Salary of an employee.
  final int salary;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource(
      {required List<Map<String, dynamic>> employeeData,
      required List<String> columns}) {
    _employeeData = employeeData.map((employee) {
      return DataGridRow(
          cells: columns.map((col) {
        return DataGridCell(columnName: col, value: employee[col],);
      }).toList());
    }).toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(e.value.toString(),softWrap: true,overflow: TextOverflow.visible,),
      );
    }).toList());
  }
}
