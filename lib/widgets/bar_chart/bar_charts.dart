import 'package:flutter/material.dart';
import 'package:graphs_flutter/constants.dart';

import 'chart_column.dart';

class BarCharts extends StatelessWidget {
  const BarCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
        ChartColumn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
