import 'dart:convert';

import 'package:eye_scan/models/doctormodel.dart';
import 'package:http/http.dart' as http;

class ProfileDoctorService {
  Future<DoctorModel?> fetchProfile() async {
    DoctorModel?doctorData;
    try {
      Uri url = Uri.parse('https://laravel.investtradegm.com/api/doctor/login');
      final response = await http.get(url);
      Map<String, dynamic>data = jsonDecode(response.body);
      doctorData = DoctorModel.fromjson(data);
    }catch(e)
    {
      print('error is $e');
    }
    return doctorData;

  }
}