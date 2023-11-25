import 'package:flutter/material.dart';
import 'package:hospital_appointment_app/models/hospital.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.hospital});

  final Hospital hospital;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        width: 140,
        height: 150,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Column(
          children: [
            Image(
              image: AssetImage(hospital.image),
              width: 150,
              height: 100,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              hospital.name,
              style: const TextStyle(
                color: Color(0xFF777777),
                fontSize: 18,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            Text(
              hospital.speciality,
              style: const TextStyle(
                color: Color(0xFF777777),
                fontSize: 14,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
