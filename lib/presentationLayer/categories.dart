import 'package:flutter/material.dart';
import 'package:hospital_appointment_app/data/hospital_list.dart';
import 'package:hospital_appointment_app/models/hospital.dart';
import 'package:hospital_appointment_app/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.hospital});
  final Hospital hospital;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff40ACC9),
        foregroundColor: Colors.white,
        title: const Text(
          'Our Health Services',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Almarai',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(child: buildCategoryCard())
        ],
      ),
    );
  }

  buildCategoryCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //  childAspectRatio: (100 / 140),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
          scrollDirection: Axis.vertical,
          itemCount: hospital.categories.length,
          itemBuilder: (context, index) {
            final allCategories = hospital.categories[index];
            return GestureDetector(
                // onTap: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             HospitalDetails(hospital: allItems))),
                child: CategoryCard(
              category: allCategories,
            ));
          }),
    );
  }
}
