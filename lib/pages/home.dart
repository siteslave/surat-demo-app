import 'package:demo/pages/scan_qrcode.dart';
import 'package:demo/pages/setting.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

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
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // เรียกเพจ โดยใช้ชื่อคลาส
          var res = await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ScanQRCodePage(
                  cid: "123456789078", fullname: "Satit Rianpit")));

          if (res != null) {
            print(res);
          }
        },
        child: Icon(Icons.qr_code_scanner),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          print(index);
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "วันนี้"),
          BottomNavigationBarItem(
              icon: Icon(Icons.travel_explore), label: "ประวัติ"),
        ],
      ),
    );
  }
}
