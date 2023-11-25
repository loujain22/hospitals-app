import 'package:hospital_appointment_app/models/category.dart';

class Hospital {
  final int id;
  final String name;
  final String speciality;
  final String description;
  final String image;
  final List<Category> categories;

  Hospital(
      {required this.id,
      required this.name,
      required this.speciality,
      required this.description,
      required this.image,
      required this.categories});
}
