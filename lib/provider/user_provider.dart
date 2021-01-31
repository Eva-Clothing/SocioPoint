import 'package:flutter/material.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();

  User get getUser {
    return _user;
  }

  set setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
