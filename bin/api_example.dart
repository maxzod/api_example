import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  /// wht route or path the request will be made to
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/15');

  /// make a [GET] request to the url
  var response = await http.get(url);

  /// convert the response to a [Map]
  final responseBody = jsonDecode(response.body);

  /// print the actual response
  print('''
Response status: ${response.statusCode}
todo title : ${responseBody['title']}
todo completed: ${responseBody['completed']}    
''');
}
