import 'package:flutter/material.dart';

class ScanQRCodePage extends StatefulWidget {
  const ScanQRCodePage({Key? key}) : super(key: key);

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
      body: Center(
        child: Text("สแกนคิวอาร์โค้ด"),
      ),
    );
  }
}
