import 'package:flutter/material.dart';

class WidgetItemToday extends StatefulWidget {
  final String storeName;
  final String address;
  final Color color;
  final String checkinTime;
  final String imageUrl;

  final GestureTapCallback onTab;

  WidgetItemToday(
      {required this.storeName,
      required this.address,
      required this.color,
      required this.checkinTime,
      required this.imageUrl,
      required this.onTab});

  @override
  _WidgetItemTodayState createState() => _WidgetItemTodayState();
}

class _WidgetItemTodayState extends State<WidgetItemToday> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTab,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: CircleAvatar(
            child: Image.asset(widget.imageUrl),
          ),
          title: Text("${widget.storeName}"),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${widget.address}"),
              Text("เวลา ${widget.checkinTime} น."),
            ],
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ),
    );
  }
}
