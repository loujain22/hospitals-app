import 'package:flutter/material.dart';
import 'package:hospital_appointment_app/models/category.dart';
import 'package:hospital_appointment_app/models/hospital.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        width: 80,
        height: 60,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Column(
          children: [
            Image(
              image: AssetImage(category.image),
              width: 150,
              height: 100,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              category.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF545454),
                fontSize: 22,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
