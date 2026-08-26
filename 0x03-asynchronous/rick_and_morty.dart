import 'dart:convert';
import 'package:http/http.dart' as http;

Future printRmCharacters() async {
  try {
    String? url = 'https://rickandmortyapi.com/api/character';

    while (url != null) {
      var response = await http.get(Uri.parse(url));
      var data = json.decode(response.body);

      for (var character in data['results']) {
        print(character['name']);
      }

      url = data['info']['next'];
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
