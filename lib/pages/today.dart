import 'dart:convert' as convert;

import 'package:demo/widgets/item_today.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  List users = [];

  Future getUsers() async {
    try {
      var url = Uri.parse('https://randomuser.me/api/?results=50');
      var res = await http.get(url);
      if (res.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(res.body) as Map<String, dynamic>;
        setState(() {
          users = jsonResponse["results"];
        });
      } else {
        print("Network/Server error.");
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          var user = users[index];
          var fullname =
              "${user["name"]["title"]}${user["name"]["first"]} ${user["name"]["last"]}";
          var email = user["email"];
          var registerDate = user["registered"]["date"];
          var male = user["gender"];
          var age = user["dob"]["age"];
          Color color =
              age <= 50 ? Colors.green.shade100 : Colors.orange.shade100;

          return WidgetItemToday(
            onTab: () {
              print("$fullname");
            },
            storeName: "$fullname",
            address: "$email",
            checkinTime: "$registerDate",
            color: color,
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
