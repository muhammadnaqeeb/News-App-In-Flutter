import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper();
  Future getData() async {
    http.Response response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=pakistan&apiKey=fbba9ecd2fae4e8e90d8ffcfce9cd38c"));

    //print(response.body);
// print(response.statusCode);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
//print(decodedData);
      return decodedData;
    } else {
//print(response.statusCode);
    }
  }
}
