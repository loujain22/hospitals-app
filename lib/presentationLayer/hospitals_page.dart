import 'package:flutter/material.dart';
import 'package:hospital_appointment_app/data/hospital_list.dart';
import 'package:hospital_appointment_app/presentationLayer/hospital_details.dart';
import 'package:hospital_appointment_app/widgets/item_card.dart';
import 'package:hospital_appointment_app/widgets/textfield.dart';

class HospitalsScreen extends StatelessWidget {
  const HospitalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff40ACC9),
          foregroundColor: Colors.white,
          title: const Text(
            "Hospitals",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 40),
            const SearchTextField(),
            const SizedBox(height: 40),
            Expanded(child: buildItemCard())
          ],
        ));
  }

  buildItemCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //  childAspectRatio: (100 / 140),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
          scrollDirection: Axis.vertical,
          itemCount: hospitals.length,
          itemBuilder: (context, index) {
            final allItems = hospitals[index];
            return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HospitalDetails(hospital: allItems))),
                child: ItemCard(
                  hospital: allItems,
                ));
          }),
    );
  }
}
