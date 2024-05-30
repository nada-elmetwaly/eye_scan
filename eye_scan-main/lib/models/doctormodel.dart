import 'dart:io';

class DoctorModel {
  String? id;
  String? name;
  String? phone;
  File? image;
  String? experience;
  String? fee;
  String? location;

  DoctorModel(
      {required this.id,
      required this.name,
      required this.phone,
      required this.image,
      required this.experience,
      required this.fee,
      required this.location});

  factory DoctorModel.fromjson(dynamic data) {
    var jsonData = data["data"];
    return DoctorModel(
        id: jsonData["id"],
        name: jsonData["name"],
        phone: jsonData["phone"],
        image: jsonData["image"],
        experience: jsonData["experience"],
        fee: jsonData["fees"],
        location: jsonData["location"]);
  }
}
