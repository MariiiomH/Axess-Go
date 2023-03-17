import 'package:axess_go/models/CartModel.dart';

class CartList {

  static List<CartModel> getItems() {
    return [
      CartModel(
          title: 'Caramel Spiced Latte',
          imgPath: 'assets/images/coffee1.png',
          digit: '0',
          price: 25,
      ),
     
       CartModel(
          title: 'Pumpkin Spiced Latte',
          imgPath: 'assets/images/coffee2.png',
          digit: '1',
          price: 45,
      ),
        CartModel(
          title: 'Caramel Spiced Latte',
          imgPath: 'assets/images/coffee0.png',
          digit: '2',
          price: 35,
      ),
      CartModel(
          title: 'Caramel Spiced Latte',
          imgPath: 'assets/images/coffee1.png',
          digit: '1',
          price: 20,
      ),
    ];
}
}
