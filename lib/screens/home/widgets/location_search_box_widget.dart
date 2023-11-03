import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Where to?',
          hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.primary,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(
              left: 18.0,
              right: 15,
              bottom: 4,
            ),
            child: Icon(
              IconlyLight.search,
              color: Colors.black,
            ),
          ),
          suffixIcon: Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
            ),
            child: const Icon(
              IconlyLight.filter,
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
        ),
        style: const TextStyle(fontSize: 17, color: Colors.black),
      ),
    );
  }
}
