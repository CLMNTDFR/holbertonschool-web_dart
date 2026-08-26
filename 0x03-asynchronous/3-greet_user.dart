import 'dart:convert';


Future<String> greetUser() async {
  try {
    var data = await fetchUserData();
    var user = json.decode(data);
    return 'Hello ${user['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    var hasUser = await checkCredentials();
    print('There is a user: $hasUser');
    if (hasUser) {
      return await greetUser();
    }
    return 'Wrong credentials';
  } catch (error) {
    return 'error caught: $error';
  }
}
