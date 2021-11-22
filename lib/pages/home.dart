import 'package:demo/pages/scan_qrcode.dart';
import 'package:demo/pages/setting.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: value
      appBar: AppBar(
        title: Text("สุราษฎร์พร้อม"),
        actions: [
          IconButton(
              onPressed: () {
                // เรียกเพจ โดยใช้ชื่อคลาส
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
              icon: Icon(Icons.account_circle)),
        ],
      ),
      // Body  => พื้นที่แสดงข้อมูลในหน้าแอป
      body: Center(
          child: Text(
        "Total: $count",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4a148c)),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // เรียกเพจ โดยใช้ชื่อคลาส
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ScanQRCodePage(
                  cid: "123456789078", fullname: "Satit Rianpit")));
        },
        child: Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
