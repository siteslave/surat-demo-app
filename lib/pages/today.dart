import 'package:demo/widgets/item_today.dart';
import 'package:flutter/material.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          WidgetItemToday(
            storeName: "ร้าน ก.",
            address: "ต.ปปป อ.ปปปปปป",
            checkinTime: "11.00",
            color: Colors.green.shade100,
          ),
          WidgetItemToday(
            storeName: "ร้าน ข.",
            address: "ต.พพพพ อ.พพพพพ",
            checkinTime: "12.00",
            color: Colors.pink.shade100,
          ),
        ],
      ),
    );
  }
}
