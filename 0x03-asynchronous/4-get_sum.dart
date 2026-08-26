import 'dart:convert';

Future calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var user = json.decode(userData);
    var ordersData = await fetchUserOrders(user['id']);
    var orders = json.decode(ordersData) as List;

    double total = 0;
    for (var product in orders) {
      var priceData = await fetchProductPrice(product);
      total += json.decode(priceData);
    }
    return total;
  } catch (error) {
    return -1;
  }
}
