import 'package:flutter/material.dart';

class ScanQRCodePage extends StatefulWidget {
  final String cid;
  final String fullname;

  ScanQRCodePage({required this.cid, required this.fullname});

  @override
  _ScanQRCodePageState createState() => _ScanQRCodePageState();
}

class _ScanQRCodePageState extends State<ScanQRCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สแกนเข้าพื้นที่"),
      ),
      body: Column(
        children: [
          Text("เลขบัตรประชาชน: ${widget.cid}"),
          Text("ชื่อ-สกุล: ${widget.fullname}"),
          Text("สแกนคิวอาร์โค้ด"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text("ส่งข้อมูลกลับ"))
        ],
      ),
    );
  }
}
