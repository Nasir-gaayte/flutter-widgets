import 'package:flutter/material.dart';
import 'package:flutter_widget/mvvm/models/userModel.dart';

class UserViewModel with ChangeNotifier {
  bool _isAuthenticated = false;
  UserModel? _user;
  bool get isAuthenticated => _isAuthenticated;
  UserModel? get user => _user;

  Future<void> login(String email, String token) async {
    await Future.delayed(const Duration(seconds: 2));
    _user = UserModel(email: email, token: token);
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _user = null;
    _isAuthenticated = false;
    notifyListeners();
  }
}
