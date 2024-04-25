import 'package:flutter/cupertino.dart';

class Authtokenprovider extends ChangeNotifier
{
  String?_authtoken;
  String?get authToken=>_authtoken;
  Future<void>setAuthToken(String token)async{
    _authtoken=token;
    notifyListeners();
  }
}