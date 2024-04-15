import 'package:flutter/material.dart';

class YourNotificationTab extends StatefulWidget {
  const YourNotificationTab({super.key});

  @override
  State<YourNotificationTab> createState() => _YourNotificationTabState();
}

class _YourNotificationTabState extends State<YourNotificationTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(),
        )
      ],
    );
  }
}
