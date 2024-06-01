import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Authtokenprovider extends ChangeNotifier
{
  String?_authtoken;
  String?get authToken=>_authtoken;
  Future<void>setAuthToken(String token)async{
    _authtoken=token;
    notifyListeners();
  }
  static Authtokenprovider of(BuildContext context, {bool listen = true}) {
    return Provider.of<Authtokenprovider>(context, listen: listen);
  }
}