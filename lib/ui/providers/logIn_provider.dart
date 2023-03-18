import 'package:flutter/material.dart';
import 'package:log_in/data/repos/login_repository.dart';

class LogInProvider with ChangeNotifier {
  String _mail = "deneme@mail.com";
  String _password = "123";

  String get getMail => _mail;
  String get getPassword => _password;

  var logInRepo = LogInRepository();

  void mail(String mail) {
    _mail = logInRepo.setMail(mail);
    notifyListeners();
  }

  void password(String password) {
    _password = logInRepo.setPassword(password);
    notifyListeners();
  }
}
