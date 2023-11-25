import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: Color(0xFF777777), width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: Color(0xff40ACC9), width: 2.0),
            ),
            labelText: 'Search for specialty, or hospital ',
            labelStyle:
                const TextStyle(color: Color.fromARGB(255, 172, 172, 172)),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: const Color.fromARGB(255, 172, 172, 172)),
        style: const TextStyle(height: 0),
      ),
    );
  }
}
