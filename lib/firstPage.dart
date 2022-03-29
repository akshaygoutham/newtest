import 'package:flutter/material.dart';
import 'package:gritstone_test/api.dart';
import 'package:http/http.dart' as http;

import 'model/getListModel.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    getlist();
  }

  var arrayApi;
  Future getlist() async {
    var rsp = await apiList();
    print('$rsp');
    return 'success';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[50],
        elevation: 0,
        leading: SizedBox(
          height: 100,
          child: Image.asset(
            'assets/d.png',
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey)),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconlist(Icon(Icons.bed_outlined), 'Cot & Bed'),
              iconlist(Icon(Icons.chair_outlined), 'chair'),
              iconlist(Icon(Icons.bed_outlined), 'dining'),
              iconlist(Icon(Icons.bed_outlined), 'sofa'),
            ],
          ),
        ],
      ),
    );
  }

  iconlist(Widget icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          color: Colors.deepOrange,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ],
    );
  }
}
