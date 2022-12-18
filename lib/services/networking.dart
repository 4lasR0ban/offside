import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url),
        headers: {'X-Auth-Token': '824557d9ff144ef7a3141f8c697742fd'});

    if (response.statusCode == 200) {
      String data = response.body;
      print('succses');
      return jsonDecode(data);
    } else {
      print('failed');
      print(response.statusCode);
    }
  }
}
