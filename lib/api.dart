import 'dart:convert';

import 'package:http/http.dart' as http;

var jsonData;

Future apiList() async {
  var url =
      "http://qainventoryapiv3.metlone.com/api/v1/ProductCategory/GetAllProductCategory";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    jsonData = jsonDecode(response.body.toString());
    print(jsonData);
  } else {
    jsonData = 0;
    print("Error");
  }
  return jsonData;
}
