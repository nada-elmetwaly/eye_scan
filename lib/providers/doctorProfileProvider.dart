import 'package:eye_scan/models/doctormodel.dart';
import 'package:flutter/cupertino.dart';

class DoctorProvider extends ChangeNotifier
{
  DoctorModel?_doctorData;
  set doctorData(DoctorModel? doctorData)
  {

    _doctorData=doctorData;
    notifyListeners();
  }
  DoctorModel? get weatherData=>_doctorData;
}