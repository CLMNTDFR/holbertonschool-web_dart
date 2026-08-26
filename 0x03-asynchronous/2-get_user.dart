import '2-util.dart';

Future<void> getUser() async {
  try {
    print(await fetchUser());
  }
}
