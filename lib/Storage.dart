import 'models/User.dart';
import 'models/Cart.dart';

class Storage {
  User _user;

  User get user => _user;
  set user(User user) {
    _user = user;
    if(_user != null) {
      restoreCart();
    } else {
      _cart = Cart();
    }
  }
}