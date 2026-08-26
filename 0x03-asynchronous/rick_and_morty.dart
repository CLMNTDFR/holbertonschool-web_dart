import 'dart:convert';
import 'package:http/http.dart' as http;

Future printRmCharacters() async {
  try {
    var response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );
    var data = json.decode(response.body);

    for (var character in data['results']) {
      print(character['name']);
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
