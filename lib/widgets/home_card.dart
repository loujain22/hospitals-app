import 'package:flutter/material.dart';

class HospitalCard extends StatelessWidget {
  final String text;
  final String image;
  const HospitalCard(this.text, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        width: 160,
        height: 170,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color(0xff40ACC9)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: 80,
                height: 80,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
