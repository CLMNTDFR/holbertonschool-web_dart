import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var data = await fetchUserData();
  var user = json.decode(data);
  return user['id'];
}
