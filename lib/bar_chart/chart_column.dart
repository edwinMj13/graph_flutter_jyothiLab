import 'package:flutter/material.dart';
import 'package:graphs_flutter/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartColumn extends StatelessWidget {
  const ChartColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vertical Bar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Statistics of the Month",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const SizedBox(
              height: defaultPadding * 2,
            ),
            Row(
              children: [
                Container(
                  width: 27,
                  height: 13,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF72585),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Data One",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Container(
                  width: 27,
                  height: 13,
                  decoration: BoxDecoration(
                      color: const Color(0xff77209b7),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Data Two",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            SfCartesianChart(
              plotAreaBackgroundColor: Colors.transparent,
              margin: const EdgeInsets.all(0),
              // margin of the chart (no space around the chart)
              borderColor: Colors.transparent,
              // color of the border of the chart is transparent
              borderWidth: 0,
              //width of the border of the chart to zero no border
              plotAreaBorderWidth: 0,
              // no border
              enableSideBySideSeriesPlacement: false,
              // the values are stacked on top of each other

              primaryXAxis: const CategoryAxis(
                axisLine: AxisLine(width: 0.5), // width of the center axis line
                majorGridLines: MajorGridLines(width: 0), // the grid lines for the seperation of the bars
                majorTickLines: MajorTickLines(width: 0),
                crossesAt: 0,
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
                minimum: -1,
                maximum: 2,
                interval: 0.5,
              ),
              series: <CartesianSeries>[
                ColumnSeries<ChartColumnData,String>(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  dataSource: charData,
                  width: 0.5,
                  xValueMapper: (ChartColumnData data,_)=>data.x,
                  yValueMapper: (ChartColumnData data,_)=>data.y,
                ),
                ColumnSeries<ChartColumnData,String>(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  dataSource: charData,
                  width: 0.5,
                  xValueMapper: (ChartColumnData data,_)=>data.x,
                  yValueMapper: (ChartColumnData data,_)=>data.y1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChartColumnData {
  final String x; //string label
  final double? y; //value of the data on the y axis on the 1st series
  final double? y1; //data on the y axis 2nd series
  ChartColumnData(this.x, this.y, this.y1);
}

final List<ChartColumnData> charData = [
  ChartColumnData("Mo", -0.3, 1.7),
  ChartColumnData("Tu", -0.5, 0.4),
  ChartColumnData("We", -0.4, 1),
  ChartColumnData("Th", -0.45, 0.7),
  ChartColumnData("Fr", -0.9, 0.8),
  ChartColumnData("Sa", -0.6, 0.9),
  ChartColumnData("Su", -0.5, 1),
];
