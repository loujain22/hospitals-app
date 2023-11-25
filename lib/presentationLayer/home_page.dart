import 'package:flutter/material.dart';
import 'package:hospital_appointment_app/presentationLayer/hospitals_page.dart';
import 'package:hospital_appointment_app/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Stack(
            children: [
              Image(image: AssetImage('images/background.png')),
              // SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: PopupMenuItem<String>(
                  child: ListTile(
                    leading: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ), // your icon
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          Text(
            "Our Health Services",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50),
            child: Text(
              "There are many variations of passages of Lorem Ipsum",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HospitalsScreen()));
                    },
                    child:
                        const HospitalCard("Hospitals", "images/hospital.png")),
                const HospitalCard("Clinics", "images/clinic.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
