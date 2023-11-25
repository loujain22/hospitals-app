import 'package:flutter/material.dart';
import 'package:hospital_appointment_app/models/hospital.dart';
import 'package:hospital_appointment_app/presentationLayer/categories.dart';

class HospitalDetails extends StatelessWidget {
  const HospitalDetails({super.key, required this.hospital});
  final Hospital hospital;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff40ACC9),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Image(
              image: AssetImage("images/imageHos.png"),
              width: 250,
              height: 250,
            ),
          ),
          Center(
            child: Text(
              hospital.name,
              style: const TextStyle(
                color: Color(0xFF40ACC9),
                fontSize: 30,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              hospital.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF797878),
                fontSize: 18,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'Location',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF40ACC9),
                fontSize: 25,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'Cairo Street ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF7A7979),
                fontSize: 22,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'There are many variations of passages',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF797878),
                fontSize: 18,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Our Services ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF40ACC9),
                    fontSize: 25,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Categories(hospital: hospital)));
                  },
                  child: const Text(
                    'See all',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFADADAD),
                      fontSize: 18,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCategory("images/heart.png", "Cardiologist"),
                buildCategory("images/brain.png", "Neurosurgeon"),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildCategory(String image, String name) {
    return Card(
      elevation: 4,
      child: Container(
        width: 150,
        height: 130,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              width: 80,
              height: 80,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF545454),
                fontSize: 18,
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
