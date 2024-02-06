import 'package:demo/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  User _user = User(
    id: '', 
    email: '', 
    token: '', 
    password: '',
    );
    User get user => _user;

    void setUser(String user){
      _user = User.fromJson(user);
      notifyListeners();
    }

    void setUserFormModel(User user){
      _user = user;
      notifyListeners();
    }

     bool isAuthenticated() {
    // Check if the user token exists and is not empty
    return _user.token.isNotEmpty;
  }
}