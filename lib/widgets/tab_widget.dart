import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.color,
    required this.title,
    required this.titleColor,
  });

  final Color color;
  final String title;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: Text(
          title,
          style: TextStyle(color: titleColor),
        ),
      ),
    );
  }
}
