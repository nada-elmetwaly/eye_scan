import 'dart:developer';

import 'package:dio/dio.dart';

class AppointmentService{
  final Dio dio;

  AppointmentService(this.dio);
  Future<dynamic> bookAppointment(String day,String availbel_time,String token)async{
    try{ var response=await dio.post("https://laravel.investtradegm.com/api/patient/appointment/store",
        data: {'day':day,'availbel_time':availbel_time},
        options: Options(headers: {'Authorization':'Bearer $token'})
    );
    if(response.statusCode ==200 && response.data != 'data'){
      return response.statusCode;
    }
    else{
      return 'Error';
    }
    }catch(error){
      return error;
    }
  }


}